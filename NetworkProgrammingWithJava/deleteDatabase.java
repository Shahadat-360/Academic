import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class deleteDatabase {

	public static void main(String[] args) throws SQLException {
		try {
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection connection = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\MD_Sh\\OneDrive\\Documents\\ICE_PUST.accdb");
			PreparedStatement preparedStatement=connection.prepareStatement("Delete From Student where Name=?");
			preparedStatement.setString(1, "Rabbi");
			preparedStatement.executeUpdate();
			System.out.println("Sucessfully Deleted");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Database Not Connected");
		}
		
	}

}
