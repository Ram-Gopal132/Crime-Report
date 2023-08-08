
package com.app;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

@MultipartConfig(maxFileSize = 10000000L)
public class LoanSubmitted extends HttpServlet {

	Connection cn;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);

		cn = (Connection) config.getServletContext().getAttribute("CONN");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);

		try {
			String _name = req.getParameter("txt_name");
			String _adhar = req.getParameter("txt_adhar");
			String _pan = req.getParameter("txt_pan");

			Part _adhar_image = req.getPart("file_adhar");
			Part _pan_image = req.getPart("file_pan");

			InputStream ins = _adhar_image.getInputStream();
			InputStream ins_pan = _pan_image.getInputStream();
			PreparedStatement ps = cn.prepareStatement("insert into loanpass(name,aadharno,panno,aadharimage,panimage) values(?,?,?,?,?)");
			ps.setString(1, _name);
			ps.setString(2,_adhar);
			ps.setString(3,_pan);
			ps.setBlob(4,ins);
			ps.setBlob(5,ins_pan);
			
			
			
			
		} catch (Exception e) {
			// TODO: handle exception

			JOptionPane.showMessageDialog(null, "Reason of Error::" + e.getMessage());
		}
	}

}
