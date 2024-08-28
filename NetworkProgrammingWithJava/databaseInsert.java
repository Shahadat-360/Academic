import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class databaseInsert {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection connection=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\MD_Sh\\OneDrive\\Documents\\ICE_PUST.accdb");
		System.out.println("Successfully Connected");
		PreparedStatement preparedStatement=connection.prepareStatement("INSERT INTO Student(Name,Email,Phone)VALUES(?,?,?)");
		preparedStatement.setString(1, "Shahadat");
		preparedStatement.setString(2, "1337.shahadat@gmail.com");
		preparedStatement.setString(3, "01726797343");
		preparedStatement.executeUpdate();
		System.out.println("Inserted Successfully");
	}

}
