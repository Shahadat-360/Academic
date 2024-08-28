import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Scanner;

public class UDPclient{
	public static void main(String[] args) throws IOException {
		//sending portion
		System.out.println("Server listening....");
		DatagramSocket socket=new DatagramSocket();
		InetAddress ServerAdd=InetAddress.getByName("localhost");
		Scanner sc=new Scanner(System.in);
		String Sentence=sc.nextLine();
		byte[] msg=Sentence.getBytes();
		DatagramPacket packet=new DatagramPacket(msg, msg.length,ServerAdd,2222);
		socket.send(packet);
	
//		receiving portion
		byte[] receive=new byte[1024];
		DatagramPacket receivedPacket=new DatagramPacket(receive,receive.length);
		socket.receive(receivedPacket);
		String modifiedSentence=new String(receivedPacket.getData(),0,receivedPacket.getLength());
		System.out.println("Modified Sentence: "+modifiedSentence);
		sc.close();
		socket.close();
	}
}