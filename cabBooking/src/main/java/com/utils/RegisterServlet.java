package com.utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.http.*;
import javax.swing.JDialog;
import javax.swing.JOptionPane;

public class RegisterServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String userName,email,password,re_password;
	public void doPost(HttpServletRequest req , HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		userName = req.getParameter("uname");
		email = req.getParameter("mail");
		password = req.getParameter("password");
		re_password = req.getParameter("re-password");
		PrintWriter out = res.getWriter();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cabbooking","root","Dharshan666");
			String query = "insert into userdetails(userName,userEmail,userPassword,userRe_password) values(?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setString(1,userName);
			
			ps.setString(2,email);
			ps.setString(3,password);
			if(password==re_password)
			{
			ps.setString(4,re_password);
			}
			else {
				JOptionPane optionPane = new JOptionPane("Please Enter Same Password",JOptionPane.WARNING_MESSAGE);
				JDialog dialog = optionPane.createDialog("Warning!");
				dialog.setAlwaysOnTop(true);
				dialog.setVisible(true); 
			}
	
			
			ps.executeUpdate();
			out.println("userDetails is inserted");
		}catch(Exception e) {
			System.out.println(e);
		}
	}
}
