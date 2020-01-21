package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" class=\"no-js\">\n");
      out.write("<head>\n");
      out.write(" <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  \n");
      out.write("  <script src=\"bootstrap/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js\"></script>\n");
      out.write("  <script>\n");
      out.write("\t//paste this code under head tag or in a seperate js file.\n");
      out.write("\t// Wait for window load\n");
      out.write("\t$(window).load(function() {\n");
      out.write("\t\t// Animate loader off screen\n");
      out.write("\t\t$(\".se-pre-con\").fadeOut(\"slow\");;\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("  <!-- Bootstrap core CSS -->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Lato\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"bootstrap/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"bootstrap/bootstrap-theme.min.css\" rel=\"stylesheet\">\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"bootstrap/bootstrap.min.js\"></script>\n");
      out.write("  <title>Profile</title>\n");
      out.write("  <link rel=\"icon\" href=\"icon.png\">\n");
      out.write("  <link href=\"bootstrap/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("   <link href=\"style.css\" rel=\"stylesheet\">\n");
      out.write("   <link href=\"categories.css\" rel=\"stylesheet\">\n");
      out.write("   <style>\n");
      out.write("       .margin {margin-bottom: 45px;}\n");
      out.write("  .backg1 { \n");
      out.write("      background-color: #cc0000; \n");
      out.write("      color: #ffffff;\n");
      out.write("  }\n");
      out.write("  .backg2 { \n");
      out.write("      background-color: whitesmoke;\n");
      out.write("      color: black;\n");
      out.write("  }\n");
      out.write("  .backg3 { \n");
      out.write("      background-color: #2f2f2f; /* Black Gray */\n");
      out.write("      color: #fff;\n");
      out.write("  }\n");
      out.write("   </style>\n");
      out.write("   \n");
      out.write(" </head>\n");
      out.write("  ");
        String name = "", contact="",dob="",city="" ,address="",role="";
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                name = "GUEST";
                response.sendRedirect("login.jsp");
            } else {
                ps = con.prepareStatement("select * from bookstore.userdetails where email= ?");
                ps.setString(1, session.getAttribute("userid") + "");
                rs = ps.executeQuery();
                if (rs.next()) {
                    name = rs.getString("uname");
                   contact = rs.getString("contact");
                    dob = rs.getString("dob");
                    city = rs.getString("city");
                     address = rs.getString("address");
                      role = rs.getString("role");

                }
            }
        
      out.write("\n");
      out.write("<body id=\"myPage\" >\n");
      out.write("    <div class=\"se-pre-con\"></div>\n");
      out.write("<div class=\"navbar-wrapper\" >\n");
      out.write("                <nav class=\"navbar  navbar-fixed-top\" role=\"navigation\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                           \n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\" >\n");
      out.write("                               <!-- <span class=\"sr-only\">Toggle navigation</span>-->\n");
      out.write("                             <i class=\"fa fa-bars fa-lg tgl\" aria-hidden=\"true\" ></i>                     \n");
      out.write("                         </button>\n");
      out.write("\n");
      out.write("                            <a class=\"navbar-brand\" href=\"index.html\"><span class=\"glyphicon glyphicon-home\"></span>&nbsp;Home</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("\n");
      out.write("                            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                <li><a href=\"start.jsp#rec\">RECOMMENDED</a></li>\n");
      out.write("\n");
      out.write("                                <li class=\"dropdown\">\n");
      out.write("                                    <a href=\"\"  class=\"dropdown-toggle\" data-toggle=\"dropdown\">CATEGORIES<b class=\"caret\"></b></a>\n");
      out.write("                                    <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                        <li ><a href=\"categories.jsp\" >Fantasy</a></li>\n");
      out.write("                                        <li ><a href=\"categories.jsp\">Drama</a></li>\n");
      out.write("                                        <li ><a href=\"categories.jsp\">Adventure</a></li>\n");
      out.write("\n");
      out.write("                                        <li  ><a href=\"categories.jsp\">Thriller</a></li>\n");
      out.write("                                        <li ><a href=\"categories.jsp\">Romance</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("\n");
      out.write("                                </li>\n");
      out.write("                                <li><a href=\"start.jsp#about\"><span class=\"glyphicon glyphicon-info-sign\"></span>ABOUT</a></li>\n");
      out.write("                                <li><a href=\"start.jsp#contact\"><span class=\"glyphicon glyphicon-earphone\"></span>CONTACT</a></li>\n");
      out.write("\n");
      out.write("                                ");
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                                
      out.write("<li  ><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\"></span>");
      out.print(name);
      out.write("</a></li>\n");
      out.write("                                <li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span>LOGIN|SIGNUP</a></li>\n");
      out.write("                                ");
 } else {
      out.write("<li ><a href=\"profile.jsp\"><span class=\"glyphicon glyphicon-user\"></span>");
      out.print(name);
      out.write("</a></li>\n");
      out.write("                                <li><a href=\"logout.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span>LOGOUT</a></li>  \n");
      out.write("                                    ");
}
      out.write("\n");
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("    <!--End of Navigation Bar-->\n");
      out.write("    \n");
      out.write("    <div class=\"container-fluid backg1 text-center\">\n");
      out.write("  <h3 class=\"margin\">Welcome!</h3>\n");
      out.write("  <img src=\"user.png\" class=\"img-responsive img-circle margin\" style=\"display:inline\" alt=\"profile\" width=\"300\" height=\"300\">\n");
      out.write("  <h3 class=\"text-uppercase\">");
      out.print(name );
      out.write("</h3>\n");
      out.write("  ");
 if(role.equalsIgnoreCase("admin")){ 
      out.write("\n");
      out.write("  <button type=\"button\" id=\"add-to-wish\" class=\"social-link\">\n");
      out.write("               <a href=\"admin.jsp\">Go to Admin Page &nbsp;<i class=\"fa fa-angle-double-right\" aria-hidden=\"true\"></i></a>\n");
      out.write("          </button>\n");
      out.write("                      ");
 }
else if(role.equalsIgnoreCase("user")){ 
      out.write("\n");
      out.write(" <button type=\"button\" id=\"add-to-wish\" class=\"social-link\">\n");
      out.write("               <a href=\"start.jsp\">Go to Home Page &nbsp;<i class=\"fa fa-angle-double-right\" aria-hidden=\"true\"></i></a>\n");
      out.write("          </button>\n");
} 
      out.write("\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("  <div class=\"container-fluid backg2 \">\n");
      out.write("  <h1 class=\"margin\">Details</h1>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><h2>Email:</h2></div>\n");
      out.write("      <div class=\"col-sm-6\"><h3>");
      out.print(session.getAttribute("userid"));
      out.write("</h3></div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><h2>Contact:</h2></div>\n");
      out.write("       <div class=\"col-sm-6\"><h3>");
      out.print( contact );
      out.write("</h3></div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><h2>Date of Birth:</h2></div>\n");
      out.write("       <div class=\"col-sm-6\"><h3>");
      out.print( dob );
      out.write("</h3></div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><h2>City:</h2></div>\n");
      out.write("       <div class=\"col-sm-6\"><h3>");
      out.print( city );
      out.write("</h3></div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><h2>Address:</h2></div>\n");
      out.write("       <div class=\"col-sm-6\"><h3>");
      out.print( address );
      out.write("</h3></div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><h2>Role:</h2></div>\n");
      out.write("       <div class=\"col-sm-6\"><h3>");
      out.print( role );
      out.write("</h3></div>\n");
      out.write("  </div>\n");
      out.write("   <a href=\"#\" class=\"btn btn-primary btn-lg\">\n");
      out.write("    <span class=\"glyphicon glyphicon-pencil\"></span> Edit Profile\n");
      out.write("  </a>\n");
      out.write("</div>  \n");
      out.write("    <footer class=\"container-fluid backg3 text-center\">\n");
      out.write("  <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href=\"\" target=\"_blank\">IET Lucknow</a></p> \n");
      out.write("</footer>\n");
      out.write("    \n");
      out.write("   <script>\n");
      out.write("        $(function(){\n");
      out.write("    $(\".dropdown\").hover(            \n");
      out.write("            function() {\n");
      out.write("                $('.dropdown-menu', this).stop( true, true ).fadeIn(\"fast\");\n");
      out.write("                $(this).toggleClass('open');\n");
      out.write("                $('b', this).toggleClass(\"caret caret-up\");                \n");
      out.write("            },\n");
      out.write("            function() {\n");
      out.write("                $('.dropdown-menu', this).stop( true, true ).fadeOut(\"fast\");\n");
      out.write("                $(this).toggleClass('open');\n");
      out.write("                $('b', this).toggleClass(\"caret caret-up\");                \n");
      out.write("            });\n");
      out.write("    });\n");
      out.write("    </script>    \n");
      out.write("    \n");
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
