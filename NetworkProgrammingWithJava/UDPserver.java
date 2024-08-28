import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;

public class UDPserver{
	public static void main(String[] args) throws IOException {
		DatagramSocket socket=new DatagramSocket(2222);
		System.out.println("Server Started");
		byte[] receive=new byte[1024];
	while(true) {
//			receiving portion
			DatagramPacket receivedPacket=new DatagramPacket(receive,receive.length);
			socket.receive(receivedPacket);
			String receivedData=new String(receivedPacket.getData(),0,receivedPacket.getLength());
			System.out.println("Received Sentence: "+receivedData);
			
//			sending portion
			String modifiedSentence=receivedData.toUpperCase();
			byte[] modifiedMsg=modifiedSentence.getBytes();
			DatagramPacket sendPacket=new DatagramPacket(modifiedMsg,modifiedMsg.length,receivedPacket.getAddress(),receivedPacket.getPort());
			socket.send(sendPacket);
		}
	}
}