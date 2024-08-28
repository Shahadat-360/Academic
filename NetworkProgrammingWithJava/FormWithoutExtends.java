import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class FormWithoutExtends implements ActionListener{
	static JLabel label1,label2,label3,success;
	static JTextField user1,user2,user3;
	static JFrame frame;
	static JPanel panel;
	static JButton btn;
	public static void main(String[] args) {
		frame=new JFrame();
		panel=new JPanel();
		frame.add(panel);
		
//		only label 
		label1=new JLabel("Name");
		label1.setBounds(10,10,50,20);
		label2=new JLabel("Roll");
		label2.setBounds(10,40,50,20);
		label3=new JLabel("Phone");
		label3.setBounds(10,70,50,20);
		
//		only textField
		user1=new JTextField("Enter Your Name");
		user1.setBounds(70,10,150,20);
		user2=new JTextField("Enter Your Roll");
		user2.setBounds(70,40,150,20);
		user3=new JTextField("Enter Your Phone");
		user3.setBounds(70,70,150,20);
		
		
//		button section
		btn=new JButton("Save");
		btn.setBounds(150,110,150,20);
		btn.addActionListener(new FormWithoutExtends());
		
		success = new JLabel("Not Submit yet");
		success.setBounds(130,140,150,20);
		
//		adding section
		panel.add(label1);panel.add(user1);panel.add(label2);panel.add(user2);
		panel.add(label3);panel.add(user3);panel.add(btn);panel.add(success);
		
		
		panel.setLayout(null);
		frame.setVisible(true);
		frame.setSize(400,400);
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		success.setText("Saved Successfully");
	}
}