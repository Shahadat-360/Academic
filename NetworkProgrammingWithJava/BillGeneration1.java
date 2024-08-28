import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

public class BillGeneration1 extends JFrame implements ActionListener{
	JCheckBox cb1,cb2,cb3;
	JLabel label;
	JButton btn;
	public BillGeneration1() {
		setSize(400,400);
		setVisible(true);
		setDefaultCloseOperation(EXIT_ON_CLOSE);
		label=new JLabel("Food Ordering System");
		label.setBounds(50,50,300,20);
		cb1=new JCheckBox("Pizza @100");
		cb1.setBounds(100,100,150,20);
		cb2=new JCheckBox("Burger @30");
		cb2.setBounds(100,150,150,20);
		cb3=new JCheckBox("Tea @10");
		cb3.setBounds(100,200,150,20);
		btn=new JButton("Order");
		btn.setBounds(100,250,150,20);
		btn.addActionListener(this);
		add(cb1);add(cb2);add(cb3);add(btn);add(label);
	}
	public void actionPerformed(ActionEvent e) {
		String msg="";
		double amount=0;
		if(cb1.isSelected()) {
			amount+=100;
			msg="Pizza:100\n";
		}
		if(cb2.isSelected()) {
			msg+="Burger:30\n";
			amount+=30;
		}
		if(cb3.isSelected()) {
			msg+="Tea:10\n";
			amount+=10;
		}
		msg+="--------------------\n";
		JOptionPane.showMessageDialog(this,msg+"Total: "+amount);
	}
	public static void main(String[] args) {
		new BillGeneration1();
	}
}