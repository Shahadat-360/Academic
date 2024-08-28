import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Calculator extends JFrame implements ActionListener{
	JButton b[]=new JButton[10];
	JButton b10,b11,b12,b13,b14,b15;
	JTextField res;
	int r,n1,n2;
	char op;
	public Calculator() {
		setTitle("Calculator");
		//Calculator instance will be positioned based on the five regions defined by BorderLayout: 
		//NORTH, SOUTH, EAST, WEST, and CENTER.
		setLayout(new BorderLayout());   
		JPanel p=new JPanel();
		p.setLayout(new GridLayout(4,4));
		for(int i=0;i<=9;i++) {
			b[i]=new JButton(i+"");
			p.add(b[i]);
			b[i].addActionListener(this);
		}
		b10=new JButton("+");p.add(b10);
		b11=new JButton("-");p.add(b11);
		b12=new JButton("*");p.add(b12);
		b13=new JButton("/");p.add(b13);
		b14=new JButton("=");p.add(b14);
		b15=new JButton("C");p.add(b15);
		b10.addActionListener(this);
		b11.addActionListener(this);
		b12.addActionListener(this);
		b13.addActionListener(this);
		b14.addActionListener(this);
		b15.addActionListener(this);
		res=new JTextField(10);
		add(p,BorderLayout.CENTER);
		add(res,BorderLayout.NORTH);
		setVisible(true);
		setSize(300,300);
	}
	public void actionPerformed(ActionEvent e) {
		JButton btn=(JButton)e.getSource();
		if(btn==b15) {
			n1=r=n2=0;
			res.setText("");
		}
		else if(btn==b14) {
			n2=Integer.parseInt(res.getText());
			eval();
			res.setText(""+r);
		}
		else {
			boolean opf=false;
			if(btn==b10) {
				op='+';
				opf=true;
			}
			if(btn==b11) {
				op='-';
				opf=true;
			}
			if(btn==b12) {
				op='*';
				opf=true;
			}
			if(btn==b13) {
				op='/';
				opf=true;
			}
			if(!opf) {
				for(int i=0;i<=9;i++) {
					if(btn==b[i]) {
						String tmp=res.getText();
						tmp+=i;
						res.setText(tmp);
					}
				}
			}
			else {
				n1=Integer.parseInt(res.getText());
				res.setText("");
			}
		}
	}
	void eval() {
		switch (op) {
			case '+':r=n1+n2;break;
			case '-':r=n1-n2;break;
			case '*':r=n1*n2;break;
			case '/':r=n1/n2;break;
		}
	}
	public static void main(String[] args) {
		new Calculator();
	}
}