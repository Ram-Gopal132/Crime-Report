package com.app;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

@MultipartConfig(maxFileSize = 10000000L)
public class UploadServlet extends HttpServlet {

	Connection cn;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);

		cn = (Connection) config.getServletContext().getAttribute("CONN");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String _name = req.getParameter("txt_name");
			String _Category = req.getParameter("txt_cat");
			String _location = req.getParameter("txt_Lo");
			Part _image_in_part = req.getPart("file_upload");
			InputStream _image_in_bits = _image_in_part.getInputStream();

			String _desc = req.getParameter("ta_desc");
			String _date = (new Date()).toString();
			PreparedStatement ps = cn.prepareStatement(
					"insert into complain(Name,category,image_evidence1,description,complain_date_time,Location) values(?,?,?,?,?,?)");

			ps.setString(1, _name);
			ps.setString(2, _Category);
			ps.setBlob(3, _image_in_bits);
			ps.setString(4, _desc);
			ps.setString(5, _date);
			ps.setString(6, _location);

			int a = ps.executeUpdate();

			if (a > 0) {
				
				PreparedStatement ps1=cn.prepareStatement("select max(Cid) from complain");
				ResultSet rs1=ps1.executeQuery();
				rs1.next();
				
				PrintWriter out = resp.getWriter();

				resp.setContentType("text/html");

				RequestDispatcher rd = req.getRequestDispatcher("/reg.jsp");
				rd.include(req, resp);

				out.println("<h3 align=center><font color=red>Complain Registered! Your Complain id is::"+rs1.getString(1)+"</font></h3>");

			}

		} catch (Exception e) {
			// TODO: handle exception
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}
}
