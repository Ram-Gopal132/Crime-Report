/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.79
 * Generated at: 2023-05-27 05:04:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class childabuse_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;


response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility


if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("ErrorPage1.jsp");
	
	}


      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Other</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\"/>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div class=\"menu\">\r\n");
      out.write("	<table cellspacing=\"0\" cellpadding=\"20\" width=\"100%\">\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td align=\"right\"><img src=\"siteImages/logo1.jpg\"\r\n");
      out.write("					height=\"100\" width=\"100\" /></td>\r\n");
      out.write("				<td colspan=\"3\" align=\"left\"><h4>CRIME REPORT SOLVER</h4></td>\r\n");
      out.write("				<td><a href=\"index.jsp\"><img alt=\"Home\"\r\n");
      out.write("						src=\"siteImages/red.png\" width=\"27\" height=\"27\"></a></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>\r\n");
      out.write("		</div>\r\n");
      out.write("\r\n");
      out.write("	");

	String _category = "Child Abuse";
	Connection cn = (Connection) application.getAttribute("CONN");

	PreparedStatement ps = cn.prepareStatement("select * from complain where category=?");
	ps.setString(1, _category);

	ResultSet rs = ps.executeQuery();
	
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<table cellpadding=\"10\" cellspacing=\"0\" border=\"0\" width=\"100%\"\r\n");
      out.write("		bgcolor=\"lightyellow\" align=\"center\">\r\n");
      out.write("\r\n");
      out.write("		<tr bgcolor=\"blue\">\r\n");
      out.write("			<th colspan=\"6\"><font color=\"white\">CHILD ABUSE COMPLAINS</font></th>\r\n");
      out.write("		</tr>\r\n");
      out.write("\r\n");
      out.write("		");

		while (rs.next()) {
		
      out.write("\r\n");
      out.write("\r\n");
      out.write("		<tr bgcolor=\"#A3E4D7\">\r\n");
      out.write("			<td></td>\r\n");
      out.write("			<td><font face=\"courier\" color=\"red\">COMP. ID</font></td>\r\n");
      out.write("			<td>");
      out.print(rs.getString(1));
      out.write("</td>\r\n");
      out.write("			<td><font face=\"courier\" color=\"red\">COMPLAINANT</font></td>\r\n");
      out.write("			<td>");
      out.print(rs.getString(2));
      out.write("</td>\r\n");
      out.write("			<td rowspan=\"4\" bgcolor=\"#D7BDE2\" align=\"center\"><a\r\n");
      out.write("				href=\"showEvidence.jsp?cid=");
      out.print(rs.getString(1));
      out.write("\"><img\r\n");
      out.write("					src=\"showEvidence.jsp?cid=");
      out.print(rs.getString(1));
      out.write("\" width=\"150\"\r\n");
      out.write("					height=\"150\"></a></td>\r\n");
      out.write("		</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		<tr>\r\n");
      out.write("			<td></td>\r\n");
      out.write("			<td><font face=\"courier\" color=\"red\">Description</font></td>\r\n");
      out.write("			<td colspan=\"3\"><font face=\"consolas\" color=\"green\">(<font\r\n");
      out.write("					color=\"brown\">Complain Time:");
      out.print(rs.getString(7));
      out.write("</font>)");
      out.print(rs.getString(5));
      out.write("</font></td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		</tr>\r\n");
      out.write("\r\n");
      out.write("		<tr>\r\n");
      out.write("			<td></td>\r\n");
      out.write("			<td><font face=\"courier\" color=\"red\">Location</font></td>\r\n");
      out.write("			<td colspan=\"3\">");
      out.print(rs.getString(9));
      out.write("</font></td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		</tr>\r\n");
      out.write("\r\n");
      out.write("		<tr bgcolor=\"lightyellow\">\r\n");
      out.write("			<td></td>\r\n");
      out.write("			<td><font face=\"courier\" color=\"red\">Response</font></td>\r\n");
      out.write("			<td colspan=\"3\"><font color=\"Orange\">(<font color=\"blue\">Response\r\n");
      out.write("						Time:");
      out.print(rs.getString(8));
      out.write("</font>)");
      out.print(rs.getString(6));
      out.write("</font></td>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<td colspan=\"6\"><hr /><br></td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		");

		}
		
      out.write("\r\n");
      out.write("\r\n");
      out.write("		<tr>\r\n");
      out.write("		</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
