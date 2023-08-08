package com.app;

import java.awt.print.Printable;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class first extends HttpServlet{
	
	public void init(ServletConfig sc)throws ServletException
	{
		super.init();
		javax.swing.JOptionPane.showMessageDialog(null, "Servlet initilize");
	}
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	
	{
		PrintWriter out=res.getWriter();
		out.println("conn");
		
		out.close();
	}

}
