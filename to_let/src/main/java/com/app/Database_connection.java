package com.app;

import java.sql.Connection;

import java.sql.DriverManager;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class Database_connection implements ServletContextListener {
	
	
	Connection cn;
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/agroselling?autoReconnect=true&useSSL=false","root","boot");
			sce.getServletContext().setAttribute("CONN", cn);
			
		} catch (Exception e) {
			// TODO: handle exception
			
			javax.swing.JOptionPane.showMessageDialog(null, "Reason of Error::"+e.getMessage());
		}
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
		
	try {
			
			if(!cn.isClosed())
				cn.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			
			javax.swing.JOptionPane.showMessageDialog(null, "Reason of Error::"+e.getMessage());
		}
	}

}
