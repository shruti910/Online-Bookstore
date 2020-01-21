package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/connection.jsp");
  }

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore",
            "root", "root");
    PreparedStatement ps;
    ResultSet rs;
    Statement stmt;

      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"Bookstore site\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("        <link rel=\"icon\" href=\"icon.png\">\n");
      out.write("        <title>Bookstore</title>\n");
      out.write("        <!-- Latest compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <link href=\"bootstrap/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"bootstrap/bootstrap-theme.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"coverstyle.css\" rel=\"stylesheet\">\n");
      out.write("         ");
        String name = "";
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                name = "GUEST";
                
            } else {
                ps = con.prepareStatement("select * from bookstore.userdetails where email= ?");
                ps.setString(1, session.getAttribute("userid") + "");
                rs = ps.executeQuery();
                if (rs.next()) {
                    name = rs.getString("uname");

                }
            }
        
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"site-wrapper\">\n");
      out.write("\n");
      out.write("            <div class=\"site-wrapper-inner\">\n");
      out.write("\n");
      out.write("                <div class=\"cover-container\">\n");
      out.write("\n");
      out.write("                    <div class=\"masthead clearfix\">\n");
      out.write("                        <div class=\"inner\">\n");
      out.write("                            <h3 class=\"masthead-brand\"><b>BOOKSTORE</b></h3>\n");
      out.write("                            <ul class=\"nav masthead-nav\">\n");
      out.write("                                <li class=\"active\"><a href=\"#\"><span class=\"glyphicon glyphicon-home\"></span>&nbsp;Home</a></li>\n");
      out.write("                                 ");
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                                     
      out.write("\n");
      out.write("                                 \n");
      out.write("                                <li><a href=\"login.jsp\">Login</a></li>\n");
      out.write("                                <li><a href=\"signup.jsp\">Signup</a></li>\n");
      out.write("                                ");
 } else{ 
      out.write("\n");
      out.write("                                <li><a href=\"order.jsp\">Your Orders</a></li>\n");
      out.write("                                <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"inner cover\">\n");
      out.write("                        <h1 class=\"cover-heading\" style=\"font-family: Somatic Rounded;\">Welcome Bookaholics!</h1>\n");
      out.write("                        <p class=\"lead\" style=\"font-family: Somatic Rounded;\">Immerse yourselves in the beauty of portable magic that are Books!</p>\n");
      out.write("                        <p class=\"lead\">\n");
      out.write("                            <a href=\"start.jsp\" class=\"btn btn-lg btn-default\">Let's Start!</a>\n");
      out.write("                        </p>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"mastfoot\">\n");
      out.write("                        <div class=\"inner\">\n");
      out.write("                            <p style=\"color:white;\">© 2017 Bookstore. All Rights Reserved | Design by  <a href=\"#\" target=\"_blank\">IET Lucknow</a></p> \n");
      out.write("\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- jQuery library -->\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Latest compiled JavaScript -->\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <!-- Bootstrap core JavaScript -->\n");
      out.write("        <script src=\"bootstrap/jquery.min.js\"></script>\n");
      out.write("        <script src=\"bootstrap/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"bootstrap/docs.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
