/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.79
 * Generated at: 2023-05-21 16:58:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class static_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.sql.Connection");
    _jspx_imports_classes.add("java.sql.ResultSet");
    _jspx_imports_classes.add("java.sql.PreparedStatement");
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server
response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance
response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility


if(session.getAttribute("uid")==null || session.getAttribute("ps")==null)
	{
	
		response.sendRedirect("ErrorPage.jsp");
	
	}


      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>HomePage</title>\r\n");
      out.write("<script lang=\"JavaScript\" type=\"text/javascript\" src=\"JS/Prog1.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("body {background-color: #C0C0C0;}\r\n");
      out.write("</style>\r\n");
      out.write("<body>\r\n");
      out.write("	<table cellpadding=\"10\" cellspacing=\"0\" border=\"0\" width=\"100%\">\r\n");
      out.write("\r\n");
      out.write("	<tr>\r\n");
      out.write("			<td colspan=\"2\" align=\"center\">");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "banner.jsp", out, false);
      out.write("</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	\r\n");
      out.write("		<tr>\r\n");
      out.write("			<td width=\"15%\" border=\"0\"></td><td colspan=\"2\" align=\"center\">");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Menu.jsp", out, false);
      out.write("</td><td width=\"\" border=\"0\"></td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	\r\n");
      out.write("<tr> \r\n");
      out.write("		<td colspan=\"2\" align=\"center\">\r\n");
      out.write("		\r\n");
      out.write("			");

					String[] months={"January","February","March","April","May",
							"June","July","August","September","October","November","December"};
			
					Connection cn=(Connection)application.getAttribute("CONN");
					PreparedStatement ps=cn.prepareStatement("select distinct state_name from state_city");
					ResultSet rs=ps.executeQuery();
					
			
			
      out.write("\r\n");
      out.write("		\r\n");
      out.write("		<form method=\"post\" action=\"CStats.jsp\">\r\n");
      out.write("		\r\n");
      out.write("				<table cellpadding=\"5\" cellspacing=\"0\" border=\"0\" width=\"50%\" bgcolor=\"lightyellow\">\r\n");
      out.write("				\r\n");
      out.write("				\r\n");
      out.write("					<tr bgcolor=\"sky blue\"><th colspan=\"4\"><font color=\"white\">CRIME STATISTICS REPORT</font></th></tr>\r\n");
      out.write("				\r\n");
      out.write("					\r\n");
      out.write("					\r\n");
      out.write("					<tr>	<td width=\"25%\"></td><td>\r\n");
      out.write("					\r\n");
      out.write("								<select name=\"cmb_state\" onchange=\"populateCities(this.value)\" id=\"cmb1\">\r\n");
      out.write("								\r\n");
      out.write("										<option>- select the state -</option>\r\n");
      out.write("									\r\n");
      out.write("										");

											while(rs.next())
												{
												
										
      out.write("\r\n");
      out.write("										<option value=\"");
      out.print(rs.getString(1) );
      out.write('"');
      out.write('>');
      out.print(rs.getString(1) );
      out.write("</option>\r\n");
      out.write("										\r\n");
      out.write("										");

												}
										
										
										
      out.write("\r\n");
      out.write("								</select>\r\n");
      out.write("					\r\n");
      out.write("					</td><td>\r\n");
      out.write("					<select name=\"cmb_city\" id=\"info\" onchange=\"populateStats()\">\r\n");
      out.write("								\r\n");
      out.write("										<option>- select the  city -</option>\r\n");
      out.write("									\r\n");
      out.write("								\r\n");
      out.write("								</select>\r\n");
      out.write("					\r\n");
      out.write("					\r\n");
      out.write("					</td><td width=\"25%\"></td>	</tr>\r\n");
      out.write("					\r\n");
      out.write("			</table>\r\n");
      out.write("		</form>\r\n");
      out.write("		\r\n");
      out.write("		</td>\r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("		\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	</table>\r\n");
      out.write("	<div align=\"center\" id =\"display\">\r\n");
      out.write("	\r\n");
      out.write("	\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
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
