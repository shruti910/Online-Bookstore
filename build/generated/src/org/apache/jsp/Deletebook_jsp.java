package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class Deletebook_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String bname = "";
            String bsource="";
                    int bno;
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
      out.write("<html lang=\"en\" class=\"no-js\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <script src=\"bootstrap/jquery.min.js\"></script>\n");
      out.write("        <script src=\"http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            //paste this code under head tag or in a seperate js file.\n");
      out.write("            // Wait for window load\n");
      out.write("            $(window).load(function () {\n");
      out.write("                // Animate loader off screen\n");
      out.write("                $(\".se-pre-con\").fadeOut(\"slow\");\n");
      out.write("                ;\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lato\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"bootstrap/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"bootstrap/bootstrap-theme.min.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <script src=\"bootstrap/bootstrap.min.js\"></script>\n");
      out.write("        <title>Welcome Admin</title>\n");
      out.write("        <link rel=\"icon\" href=\"icon.png\">\n");
      out.write("        <link href=\"bootstrap/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"adminstyle.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        ");
        String name = "";
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                name = "GUEST";
                //response.sendRedirect("login.jsp");
            } else {
                ps = con.prepareStatement("select * from bookstore.userdetails where email= ?");
                ps.setString(1, session.getAttribute("userid") + "");
                rs = ps.executeQuery();
                if (rs.next()) {
                    name = rs.getString("uname");

                }
            }
        
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body id=\"myPage\" class=\"sticky-header left-side-collapsed\">\n");
      out.write("\n");
      out.write("        <div class=\"se-pre-con\"></div>\n");
      out.write("        <!----------------------------------------------side navigation--------------------------------------------->       \n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <section>\n");
      out.write("            <!-- left side start-->\n");
      out.write("            <div id=\"mySidenav\" class=\"sidenav\">\n");
      out.write("\n");
      out.write("                <a href=\"editCatg.jsp\">Add/Delete Category</a>\n");
      out.write("                <a href=\"editProduct.jsp\">Add Product</a>\n");
      out.write("                <a href=\"editProduct.jsp\">Delete Product</a>\n");
      out.write("                <a href=\"#\">Edit Product Details</a>\n");
      out.write("                <a href=\"#\">Add/Delete Authors</a>\n");
      out.write("                <a href=\"javascript:void(0)\" class=\"closebtn\" onclick=\"closeNav()\"><i class=\"fa fa-times\" aria-hidden=\"true\"></i></a>\n");
      out.write("            </div>\n");
      out.write("            <!-- left side end-->      \n");
      out.write("        </section>\n");
      out.write("        <section id=\"main\">\n");
      out.write("            <div class=\"navbar-wrapper\" >\n");
      out.write("                <nav class=\"navbar  navbar-fixed-top\" role=\"navigation\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("\n");
      out.write("                        <div class=\"navbar-header\">\n");
      out.write("                            <!--toggle button start-->\n");
      out.write("                            <a class=\"toggle-btn pull-right\" onclick=\"openNav()\"><i class=\"fa fa-list tgl\" aria-hidden=\"true\"></i></a>\n");
      out.write("                            <!--toggle button end-->\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                                <i class=\"fa fa-ellipsis-v tgl\" aria-hidden=\"true\"></i>                      \n");
      out.write("                            </button>\n");
      out.write("\n");
      out.write("                            <a class=\"navbar-brand\" href=\"index.html\"><span class=\"glyphicon glyphicon-home\"></span>&nbsp;Home</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("\n");
      out.write("                            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                                <li><a href=\"start.jsp#rec\">RECOMMENDED</a></li>\n");
      out.write("\n");
      out.write("                                <li class=\"dropdown\">\n");
      out.write("                                    <a href=\"start.jsp#catg\"  class=\"dropdown-toggle\" data-toggle=\"dropdown\">CATEGORIES<b class=\"caret\"></b></a>\n");
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
      out.write("            <div id=\"page-wrapper\" class=\"container theme-showcase\" role=\"main\">\n");
      out.write("<div class=\"tab-content\">\n");
      out.write("\t<div class=\" active row\" >  \n");
      out.write("            <h3 class=\"form-heading\"> Already existing categories </h3>\n");
      out.write("             <div class=\"table-responsive\">\n");
      out.write("            <table class=\"table table-striped table-hover\">\n");
      out.write("              <tbody>\n");
      out.write("            ");
 ps = con.prepareStatement("select * from bookdetails");
            rs = ps.executeQuery();
            while (rs.next()) {
                 bsource=rs.getString("bsource");
                 bname=rs.getString("bname");
                 bno=rs.getInt("bid");
            
      out.write("\n");
      out.write("               \n");
      out.write("                <tr>\n");
      out.write("                    <td class=\"text-uppercase\" style=\"color:black;\">");
      out.print(bname);
      out.write("</td>\n");
      out.write("                    <td class=\"text-uppercase\" style=\"color:black;\">");
      out.print(bname);
      out.write("</td>\n");
      out.write("                    <td><a href=\"single.jsp?bid=");
      out.print(bno);
      out.write("\"><button type=\"submit\" class=\"btn btn-success\" role=\"button\">View Book Details &#10008;</button></a>\n");
      out.write("                    </td>\n");
      out.write("                    <td><a href=\"deleteb.jsp?bid=");
      out.print(bno);
      out.write("\"><button type=\"submit\" class=\"btn btn-danger\" role=\"button\">Delete Book Details &#10008;</button></a>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("   \n");
      out.write("          ");
  }
      out.write("\n");
      out.write("              </tbody></table></div></div></div>\n");
      out.write("            </div>\n");
      out.write("      \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("        </section>   </body>\n");
      out.write("                                    </html>");
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
