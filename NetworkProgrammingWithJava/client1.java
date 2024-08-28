import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Scanner;

public class client1 {

	public static void main(String[] args) throws UnknownHostException, IOException {
		System.out.println("Client started....");
		Socket socket=new Socket("127.0.0.1",2222);
		System.out.println("Client connected");
		ObjectOutputStream oos=new ObjectOutputStream(socket.getOutputStream());
		ObjectInputStream ois=new ObjectInputStream(socket.getInputStream());
		
		Scanner sc =new Scanner(System.in);
		String msg=sc.nextLine();
		
//		sent to the server 
		oos.writeObject(msg);
		
//		receive from server
		try {
			Object fromServer=ois.readObject();
			String result=(String)fromServer;
			System.out.println("From Server: "+result);
		} catch (ClassNotFoundException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		socket.close();
	}

}
