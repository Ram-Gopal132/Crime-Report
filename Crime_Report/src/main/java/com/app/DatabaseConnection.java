package com.app;

import java.sql.*;
import javax.servlet.*;

import javax.swing.JOptionPane;


public  class DatabaseConnection implements ServletContextListener{

	Connection cn;
	public void contextInitialized(ServletContextEvent sce)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			cn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/crime_report?autoReconnect=true&useSSL=false","root","boot");
			sce.getServletContext().setAttribute("CONN",cn);
			
		}
		catch(Exception e) {
			
			JOptionPane.showMessageDialog(null,"Reason Of Error::"+ e.getMessage());
		}
	}
	public void contextDestroyed(ServletContextEvent sce)
	{
		try
		{
			if(!cn.isClosed())
			{
				cn.close();
			}
		}
		catch(Exception e)
		{
			JOptionPane.showMessageDialog(null,"Reason of Error::"+ e.getMessage());
		}
	}
	
		
	}

