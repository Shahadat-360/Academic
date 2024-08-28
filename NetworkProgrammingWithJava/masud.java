package lab_problems;

import java.awt.Color;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.*;

public class Calculator extends JFrame implements ActionListener{
  JTextField tf;
  JButton[] numb;
  JButton[] opb;
  JButton equalb,clearb,decimalb;
  JPanel panel;
  double num1,num2,result;
  char operator;
  public Calculator() {
    super("Calculator");
    setBounds(100,100,300,400);
    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    setLayout(null);
    
    tf = new JTextField();
    tf.setBounds(30,20,230,40);
    tf.setEditable(false);
    
    numb = new JButton[10];
    for(int i=0;i<10;i++) {
      numb[i] = new JButton(String.valueOf(i));
      numb[i].setFont(new Font("Ariel",Font.PLAIN,18));
    }
    opb = new JButton[4];
    opb[0] = new JButton("+");
    opb[1] = new JButton("-");
    opb[2] = new JButton("*");
    opb[3] = new JButton("/");
    
    clearb = new JButton("C");
    equalb = new JButton("=");
    decimalb = new JButton(".");
    
    panel = new JPanel();
    panel.setBounds(30,80,230,230);
    panel.setLayout(new GridLayout(5, 4, 10, 10));
    panel.setBackground(Color.gray);
    
    panel.add(numb[1]);
    panel.add(numb[2]);
    panel.add(numb[3]);
    panel.add(opb[0]);
    panel.add(numb[4]);
    panel.add(numb[5]);
    panel.add(numb[6]);
    panel.add(opb[1]);
    panel.add(numb[7]);
    panel.add(numb[8]);
    panel.add(numb[9]);
    panel.add(opb[2]);
    panel.add(decimalb);
    panel.add(numb[0]);
    panel.add(clearb);
    panel.add(opb[3]);
    panel.add(equalb);
    
    for(int i=0;i<10;i++) {
      numb[i].addActionListener(this);
    }
    for(int i=0;i<4;i++) {
      opb[i].addActionListener(this);
    }
    clearb.addActionListener(this);
    decimalb.addActionListener(this);
    equalb.addActionListener(this);
    
    add(panel);
    add(tf);
    setVisible(true);
    
  }
  public static void main(String[] args) {
    // TODO Auto-generated method stub
    new Calculator();
  }

  @Override
  public void actionPerformed(ActionEvent e) {
    for(int i=0;i<10;i++) {
      if(e.getSource() == numb[i]) {
        tf.setText(tf.getText()+i);
      }  
    }
    if(e.getSource() == decimalb) {
      tf.setText(tf.getText()+".");
    }
    if(e.getSource() == clearb) {
      tf.setText("");
      num1=num2=result=0;
      operator = '\0';
    }
    if(e.getSource() == opb[0]) {
      num1 = Double.parseDouble(tf.getText());
      operator = '+';
      tf.setText("");
    }
    if(e.getSource() == opb[1]) {
      num1 = Double.parseDouble(tf.getText());
      operator = '-';
      tf.setText("");
    }
    if(e.getSource() == opb[2]) {
      num1 = Double.parseDouble(tf.getText());
      operator = '*';
      tf.setText("");
    }
    if(e.getSource() == opb[3]) {
      num1 = Double.parseDouble(tf.getText());
      operator = '/';
      tf.setText("");
    }
    if(e.getSource() == equalb) {
      num2 = Double.parseDouble(tf.getText());
      switch(operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        result = num1 / num2;
        break;
      }
      tf.setText(String.valueOf(result));
      num1=result;
      operator = '\0';
        
    }
    
  }

}
