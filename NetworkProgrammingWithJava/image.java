import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

public class image extends JFrame{
	private JLabel label1,label2;
	image() throws IOException{
		setLayout(new FlowLayout());
		//First Image
		File file=new File("C:\\Users\\MD_Sh\\Downloads\\Solution\\Image\\ICE_logo.jpg");
		BufferedImage imageRead=ImageIO.read(file);
		ImageIcon imageIcon=new ImageIcon(imageRead);
		label1=new JLabel(imageIcon);
		add(label1);
		
//		Second Image Add 
		File file2=new File("C:\\Users\\MD_Sh\\Downloads\\Solution\\Image\\Pust_logo.png");
		BufferedImage imageRead2=ImageIO.read(file2);         //Image read
		ImageIcon imageIcon2=new ImageIcon(imageRead2);		  //Making Image as Icon
		label2=new JLabel(imageIcon2);						  //ImageIcon is contain by JLabel	
		add(label2);										  // adding to container						
	}
	public static void main(String[] args) throws IOException{
		image gui=new image();
		gui.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		gui.setSize(500,500);
		gui.setVisible(true);
		gui.setTitle("Image Processing");
	}
}