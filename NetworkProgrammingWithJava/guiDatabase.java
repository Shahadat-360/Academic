import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import javax.swing.*;

public class guiDatabase extends JFrame implements ActionListener{
	JButton insert,update,delete,show;
	JTextField Name,Email,Phone;
	JLabel name,email,phone;
	ResultSet rs;
	Connection connection;
	Statement st;
	public guiDatabase() {
		setTitle("Registration Form");
		setLayout(null);
		
		name=new JLabel("Name");
		email=new JLabel("Email");
		phone=new JLabel("Phone");
		
		name.setBounds(100,100,100,50);
		email.setBounds(100,150,100,50);
		phone.setBounds(100,200,100,50);
		
		Name=new JTextField("Enter Your Name");
		Email=new JTextField("Enter Your Email");
		Phone=new JTextField("Enter Your Phone");
		
		Name.setBounds(200,100,250,40);
		Email.setBounds(200,150,250,40);
		Phone.setBounds(200,200,250,40);
		
		insert=new JButton("Insert");
		update=new JButton("Update");
		show=new JButton("Show");
		delete=new JButton("Delete");
		
		insert.setBounds(100,270,90,50);
		update.setBounds(200,270,90,50);
		delete.setBounds(300,270,90,50);
		show.setBounds(400,270,90,50);
		
		
		insert.addActionListener(this);
		update.addActionListener(this);
		delete.addActionListener(this);
		show.addActionListener(this);
		
		
		add(email);add(Email);add(Name);add(name);add(phone);
		add(Phone);add(update);add(insert);add(delete);add(show);
		setSize(600,600);
		setVisible(true);
		Setconnection();
	}
	void Setconnection() {
		try {
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			connection=DriverManager.getConnection("jdbc:ucanaccess://C:\\Users\\MD_Sh\\OneDrive\\Documents\\ICE_PUST.accdb");
			st=connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
			rs=st.executeQuery("Select * from Student");
			System.out.println("Connected Successfully");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Database Connection not established");
		}
	}
	@Override
	public void actionPerformed(ActionEvent e) {
		JButton pb=(JButton)e.getSource();
		if(pb==show) {
			System.out.println("I am Show");
			try {
				if(rs.next()) {
					String u1=rs.getString("Name");
					String u2=rs.getString("Email");
					String u3=rs.getString("Phone");
					Name.setText(u1);
					Email.setText(u2);
					Phone.setText(u3);
				}else JOptionPane.showMessageDialog(null, "No Data");
			} catch (SQLException e1) {}
		}
		if(pb==insert) {
			System.out.println("I am Insert");
			String u1=Name.getText();
			String u2=Email.getText();
			String u3=Phone.getText();
			try {
				if(rs.next()) {
					rs.updateString("Name", u1);
					rs.updateString("Email", u2);
					rs.updateString("Phone", u3);
					rs.insertRow();
					System.out.println("Insert Successfull");
				}
			} catch (SQLException e1) {}
		}
		if(pb==update) {
			System.out.println("I am Update");
			String u1=Name.getText();
			String u2=Email.getText();
			String u3=Phone.getText();
			try {
				rs.updateString("Name", u1);
				rs.updateString("Email", u2);
				rs.updateString("Phone", u3);
				rs.updateRow();
				System.out.println("Row Updated");
			} catch (SQLException e1) {}
		}
		if(pb==delete) {
			System.out.println("I am Delete");
			try {
				if(rs.next()) {
					rs.deleteRow();
					System.out.println("Row is Deleted Successfully");
				}
			} catch (SQLException e1) {}
		}
	}
	public static void main(String[] args) {
		new guiDatabase();
	}
}

