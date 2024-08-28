import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class showDatabase {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection connection = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\MD_Sh\\OneDrive\\Documents\\ICE_PUST.accdb");
		PreparedStatement preparedStatement= connection.prepareStatement("SELECT * FROM Student");
		ResultSet result= preparedStatement.executeQuery();
		while(result.next()) {
			String name=result.getString("Name");
			String email=result.getString("Email");
			String phone=result.getString("Phone");
			System.out.println("Name: "+name+" Email: "+email+" Phone: "+phone);
		}
	}

}
