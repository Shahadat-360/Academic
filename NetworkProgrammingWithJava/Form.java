import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.SwingConstants;

public class Form extends JFrame implements ActionListener{
	JButton btn;
	JTextField Name,Roll,Phone;
	JLabel name,roll,phone,reg,msg;
	JPanel p=new JPanel();
	public Form() {
		setLayout(new BorderLayout());
		add(p,BorderLayout.CENTER);
		reg=new JLabel("Registration Form");
		reg.setBounds(50,50,250,20);
		name=new JLabel("Name");
		name.setBounds(10,90,50,20);
		Name=new JTextField("Enter Your Name: ");
		Name.setBounds(70,90,150,20);
		
		roll=new JLabel("Roll");
		roll.setBounds(10,130,50,20);
		Roll=new JTextField("Enter Your Roll: ",10);
		Roll.setBounds(70,130,150,20);
		
		phone=new JLabel("Phone");
		phone.setBounds(10,170,50,20);
		Phone=new JTextField("Enter Your Phone: ");
		Phone.setBounds(70,170,150,20);
		
		btn=new JButton("Submit");
		btn.setBounds(110,210,150,20);
		btn.addActionListener(this);
		msg=new JLabel("Not Submit Yet",SwingConstants.CENTER);
		msg.setBounds(110,240,150,20);
		
		p.add(reg);p.add(name);p.add(Name);p.add(roll);p.add(Roll);
		p.add(phone);p.add(Phone);p.add(btn);p.add(msg);
		p.setLayout(null);
		setVisible(true);
		setSize(400,400);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
	}
	public void actionPerformed(ActionEvent e) {
		msg.setText("Submitted Successfully");
	}
	public static void main(String[] args) {
		new Form();
	}
}

