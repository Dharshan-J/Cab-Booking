package com.utils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.*;
public class loginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		String email = req.getParameter("email");
		String password  = req.getParameter("psw");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/cabbooking","root","Dharshan666");
			Statement stmt = con.createStatement();
			String query = "select * from userdetails where userEmail='"+email+"' and userPassword='"+password+"'";
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				out.println("Home Page");
			}
			else {
				out.println("Incorrect UserName or Password");
			}
		}
		catch(Exception e) {
			out.println(e);
		}
	}
}
