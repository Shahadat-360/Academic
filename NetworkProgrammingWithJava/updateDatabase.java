import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class updateDatabase {

	public static void main(String[] args) throws SQLException {
		try {
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection connection = DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\MD_Sh\\OneDrive\\Documents\\ICE_PUST.accdb");
			PreparedStatement preparedStatement=connection.prepareStatement("update Student set Name=? where Phone=?");
			preparedStatement.setString(1, "Rabbi");
			preparedStatement.setString(2, "01726797343");
			preparedStatement.executeUpdate();
			System.out.println("Update Successfully");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("Database Connection not established");
		}
		

	}

}
