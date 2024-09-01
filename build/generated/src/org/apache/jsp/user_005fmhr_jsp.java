package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import MysqlConnection.SqlConnection;

public final class user_005fmhr_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');


    String id = request.getParameter("id");
    System.out.println("count : " + id);
    int a = 0, b = 0, c = 0;
    try {
        Connection con1 = SqlConnection.getConnection();
        Statement st1 = con1.createStatement();
        String sql1 = "SELECT COUNT(*) FROM tweet where uid='" + id + "'";
        ResultSet rs1 = st1.executeQuery(sql1);
        if (rs1.next()) {
            a = rs1.getInt(1);
            System.out.println("Total Count : " + rs1.getInt(1));
//
//            response.sendRedirect("user_home.jsp?msg=success");
//        } else {
//            response.sendRedirect("index.jsp?ulmsgg=Failed");
        }
        Connection con2 = SqlConnection.getConnection();
        Statement st2 = con2.createStatement();
        String sql2 = "SELECT COUNT(*) FROM tweet where uid='" + id + "' AND status='1'";
        ResultSet rs2 = st2.executeQuery(sql2);
        if (rs2.next()) {
            b = rs2.getInt(1);
            System.out.println("MH Message : " + rs2.getInt(1));
//
//            response.sendRedirect("user_home.jsp?msg=success");
//        } else {
//            response.sendRedirect("index.jsp?ulmsgg=Failed");
        }

        c = a - b;
        System.out.println("Total abnormal : " + c);



    } catch (Exception ex) {
        ex.printStackTrace();
    }

      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
