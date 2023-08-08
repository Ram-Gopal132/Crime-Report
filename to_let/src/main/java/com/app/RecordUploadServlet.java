package com.app;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
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
public class RecordUploadServlet  extends HttpServlet{
	
	Connection cn;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		
		cn=(Connection)config.getServletContext().getAttribute("CONN");
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
					String _category=req.getParameter("cmb_category");
					String _scategory=req.getParameter("cmb_scategory");
					String _pname=req.getParameter("txt_pname");
					String _description=req.getParameter("ta_description");
					
					Part _image_in_part=req.getPart("file_upload");
					InputStream _image_in_bits=_image_in_part.getInputStream();
					
					double _price=Double.parseDouble(req.getParameter("txt_price"));
					
					PreparedStatement ps=cn.prepareStatement("insert into product_info(category,scategory,pname,description,image,price) values(?,?,?,?,?,?)");
					ps.setString(1, _category);
					ps.setString(2, _scategory);
					ps.setString(3, _pname);
					ps.setString(4, _description);
					ps.setBlob(5, _image_in_bits);
					ps.setDouble(6, _price);
					
					int a=ps.executeUpdate();
					
					if(a>0)
						{
								PrintWriter out=resp
										.getWriter();
								
								out.println("Record Inserted!");
								
								out.close();
						}
					
			
		} catch (Exception e) {
			// TODO: handle exception
			JOptionPane.showMessageDialog(null, "Reason of Error::"+e.getMessage());
		}
	}

}
