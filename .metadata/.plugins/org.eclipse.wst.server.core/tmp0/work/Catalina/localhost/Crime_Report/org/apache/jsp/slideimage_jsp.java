/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.79
 * Generated at: 2023-05-05 18:20:38 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class slideimage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("	<title>Slider html</title>\r\n");
      out.write("	<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("	<meta name=\"description\" content=\"Made with WOW Slider - Create beautiful, responsive image sliders in a few clicks. Awesome skins and animations. Slider html\" />\r\n");
      out.write("	\r\n");
      out.write("	<!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->\r\n");
      out.write("	<link rel=\"stylesheet\" type=\"text/css\" href=\"engine1/style.css\" />\r\n");
      out.write("	<script type=\"text/javascript\" src=\"engine1/jquery.js\"></script>\r\n");
      out.write("	<!-- End WOWSlider.com HEAD section -->\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"background-color:#d7d7d7;margin:auto\">\r\n");
      out.write("	\r\n");
      out.write("	<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->\r\n");
      out.write("	<div id=\"wowslider-container1\">\r\n");
      out.write("	<div class=\"ws_images\"><ul>\n");
      out.write("		<li><img src=\"data1/images/112h.jpg\" alt=\"112h\" title=\"112h\" id=\"wows1_0\"/></li>\n");
      out.write("		<li><img src=\"data1/images/child.jpg\" alt=\"child\" title=\"child\" id=\"wows1_1\"/></li>\n");
      out.write("		<li><a href=\"http://wowslider.net\"><img src=\"data1/images/cm_help.jpg\" alt=\"bootstrap carousel\" title=\"cm_help\" id=\"wows1_2\"/></a></li>\n");
      out.write("		<li><img src=\"data1/images/women.jpg\" alt=\"women\" title=\"women\" id=\"wows1_3\"/></li>\n");
      out.write("	</ul></div>\n");
      out.write("	<div class=\"ws_bullets\"><div>\n");
      out.write("		<a href=\"#\" title=\"112h\"><span><img src=\"data1/tooltips/112h.jpg\" alt=\"112h\"/>1</span></a>\n");
      out.write("		<a href=\"#\" title=\"child\"><span><img src=\"data1/tooltips/child.jpg\" alt=\"child\"/>2</span></a>\n");
      out.write("		<a href=\"#\" title=\"cm_help\"><span><img src=\"data1/tooltips/cm_help.jpg\" alt=\"cm_help\"/>3</span></a>\n");
      out.write("		<a href=\"#\" title=\"women\"><span><img src=\"data1/tooltips/women.jpg\" alt=\"women\"/>4</span></a>\n");
      out.write("	</div></div><div class=\"ws_script\" style=\"position:absolute;left:-99%\"><a href=\"http://wowslider.net\">slider html</a> by WOWSlider.com v9.0</div>\r\n");
      out.write("	<div class=\"ws_shadow\"></div>\r\n");
      out.write("	</div>	\r\n");
      out.write("	<script type=\"text/javascript\" src=\"engine1/wowslider.js\"></script>\r\n");
      out.write("	<script type=\"text/javascript\" src=\"engine1/script.js\"></script>\r\n");
      out.write("	<!-- End WOWSlider.com BODY section -->\r\n");
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
