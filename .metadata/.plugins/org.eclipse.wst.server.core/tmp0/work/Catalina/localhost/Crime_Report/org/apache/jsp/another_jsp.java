/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.79
 * Generated at: 2023-05-26 18:50:20 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class another_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>Another Admin Sign up</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/signup.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\" />\r\n");
      out.write("\r\n");
      out.write("<script lang=\"JavaScript\" type=\"text/javascript\"\r\n");
      out.write("	src=\"JavaScript/prog1.js\"></script>\r\n");
      out.write("<script lang=\"JavaScript\" type=\"text/javascript\">\r\n");
      out.write("		function  crossCheckPass()\r\n");
      out.write("			{\r\n");
      out.write("				if(document.getElementById(\"pass1\").value != document.getElementById(\"pass2\").value)\r\n");
      out.write("					{\r\n");
      out.write("					\r\n");
      out.write("						alert(\"Password & Confirm Password Is Not Same please Enter Same Password!\");\r\n");
      out.write("						\r\n");
      out.write("						return false;\r\n");
      out.write("					}\r\n");
      out.write("				else\r\n");
      out.write("					{\r\n");
      out.write("					\r\n");
      out.write("						return true;\r\n");
      out.write("					}\r\n");
      out.write("			\r\n");
      out.write("			}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("	<div class=\"menu\">\r\n");
      out.write("		<table cellspacing=\"0\" cellpadding=\"20\" width=\"100%\">\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td align=\"right\"><img src=\"siteImages/logo1.jpg\"\r\n");
      out.write("					height=\"100\" width=\"100\" /></td>\r\n");
      out.write("				<td colspan=\"3\" align=\"left\"><h4>CRIME REPORT SOLVER</h4></td>\r\n");
      out.write("				<td><a href=\"index.jsp\"><img alt=\"Home\"\r\n");
      out.write("						src=\"siteImages/red.png\" width=\"27\" height=\"27\"></a></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	</div>\r\n");
      out.write("\r\n");
      out.write("	<div class=\"container\">\r\n");
      out.write("		<h3>\r\n");
      out.write("			Another Admin Sign<span>Up</span>\r\n");
      out.write("		</h3>\r\n");
      out.write("		<form method=\"post\" action=\"anotheradminconfirm.jsp\"\r\n");
      out.write("			onsubmit=\"return crossCheckPass()\">\r\n");
      out.write("			<table class=\"space\">\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td><label for=\"name\">Name:</label></td>\r\n");
      out.write("					<td><input class=\"design\" type=\"text\" name=\"ta_name\"\r\n");
      out.write("						placeholder=\"your Name\" required></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td><label for=\"email\">Email:</label></td>\r\n");
      out.write("					<td><input class=\"design\" type=\"text\" name=\"ta_email\"\r\n");
      out.write("						placeholder=\"your Email\" required onkeyup=\"Crosscheck(this.value)\"></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td><label for=\"phoneNumber\">Phone Number:</label></td>\r\n");
      out.write("					<td><input class=\"design\" type=\"tel\" name=\"ta_con\" required></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td><label for=\"password\">Password:</label></td>\r\n");
      out.write("					<td><input class=\"design\" type=\"password\" name=\"ta_pass\"\r\n");
      out.write("						id=\"pass1\" required></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td><label for=\"Cpassword\">Confirm Password:</label></td>\r\n");
      out.write("					<td><input class=\"design\" type=\"password\" name=\"ta_pass2\"\r\n");
      out.write("						id=\"pass2\" required></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td><label for=\"Sequest\">Security Question:</label></td>\r\n");
      out.write("					<td><select name=\"ta_seq\">\r\n");
      out.write("							<option selected>Select Security Question?</option>\r\n");
      out.write("							<option>What is first school name?</option>\r\n");
      out.write("							<option>What is your favorite cricketer?</option>\r\n");
      out.write("							<option>What is your favorite Color?</option>\r\n");
      out.write("							<option>What is your favorite Movie?</option>\r\n");
      out.write("							<option>What is your favorite Sport?</option>\r\n");
      out.write("					</select></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td><label for=\"ans\">Security Answer:</label></td>\r\n");
      out.write("					<td><input class=\"design\" type=\"text\" name=\"ta_ans\"></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td><label for=\"gender\">Gender:</label></td>\r\n");
      out.write("					<td><input class=\"radio\" type=\"radio\" name=\"txt_gender\"\r\n");
      out.write("						value=\"male\">Male <input class=\"radio1\" type=\"radio\"\r\n");
      out.write("						name=\"txt_gender\" value=\"female\">Female</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td><label for=\"Address\">Address</label></td>\r\n");
      out.write("					<td><textarea class=\"txtarea\"\r\n");
      out.write("							placeholder=\"Enter your Address.....\" name=\"ta_address\" rows=\"3\"\r\n");
      out.write("							cols=\"36\"></textarea></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td><label for=\"zipcode\">Zip Code:</label></td>\r\n");
      out.write("					<td><input class=\"design\" type=\"text\" name=\"zip_code\"\r\n");
      out.write("						id=\"zipcode\"></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td colspan=\"2\"><input class=\"btn\" type=\"submit\"\r\n");
      out.write("						value=\"Register\"></td>\r\n");
      out.write("				</tr>\r\n");
      out.write("\r\n");
      out.write("			</table>\r\n");
      out.write("		</form>\r\n");
      out.write("	</div>\r\n");
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
