import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class server1 {
	public static void main(String[] args) throws IOException {
		ServerSocket serverSocket=new ServerSocket(2222);
		System.out.println("Server started...");
		Socket socket=serverSocket.accept();
		System.out.println("Server Connected");
		
		ObjectInputStream ois=new ObjectInputStream(socket.getInputStream());
		ObjectOutputStream oos=new ObjectOutputStream(socket.getOutputStream());
		
		try {
			Object fromClient=ois.readObject();
			System.out.println("wating...");
			String serverMsg=(String)fromClient;
			System.out.println("From Client: "+serverMsg);
			serverMsg=serverMsg.toUpperCase();
			
			//write to the server
			oos.writeObject(serverMsg);
		} catch (ClassNotFoundException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		serverSocket.close();
	}

}
