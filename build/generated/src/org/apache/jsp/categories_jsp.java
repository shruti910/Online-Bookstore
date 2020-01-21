package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class categories_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String catg="";String auth=""; 
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
      out.write("        <script src=\"bootstrap/jquery.min.js\"></script>\n");
      out.write("        <script src=\"http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js\"></script>\n");
      out.write("        <script>\n");
      out.write("            // Wait for window load\n");
      out.write("            $(window).load(function () {\n");
      out.write("                // Animate loader off screen\n");
      out.write("                $(\".se-pre-con\").fadeOut(\"slow\");\n");
      out.write("                ;\n");
      out.write("            });\n");
      out.write("            $(function () {\n");
      out.write("                $(\"#featuredBooks\").load(\"featuredBooks.html\");\n");
      out.write("                $(\"#heading\").hide();\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Lato\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"bootstrap/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"bootstrap/bootstrap-theme.min.css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"bootstrap/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <title>Bookstore</title>\n");
      out.write("        <link rel=\"icon\" href=\"icon.png\">\n");
      out.write("        <link href=\"bootstrap/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"categories.css\" rel=\"stylesheet\">\n");
      out.write("        ");
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
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body id=\"myPage\" >\n");
      out.write("\n");
      out.write("        <div class=\"se-pre-con\"></div>\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div class=\"navbar-wrapper\" >\n");
      out.write("            <nav class=\"navbar  navbar-fixed-top\" role=\"navigation\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"navbar-header\">\n");
      out.write("                        <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("                            <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                            <i class=\"fa fa-bars fa-lg tgl\"></i>      \n");
      out.write("                        </button>\n");
      out.write("                        <a class=\"navbar-brand\" href=\"index.html\"><span class=\"glyphicon glyphicon-home\"></span>&nbsp;Home</a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("\n");
      out.write("                        <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("                            <li><a href=\"start.jsp#rec\">RECOMMENDED</a></li>\n");
      out.write("\n");
      out.write("                            <li class=\"dropdown active\">\n");
      out.write("                                <a href=\"categories.jsp\"  class=\"dropdown-toggle\" data-toggle=\"dropdown\">CATEGORIES<b class=\"caret\"></b></a>\n");
      out.write("                                <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                                    <li ><a href=\"categories.jsp\" >Fantasy</a></li>\n");
      out.write("                                    <li ><a href=\"categories.jsp\">Drama</a></li>\n");
      out.write("                                    <li ><a href=\"categories.jsp\">Adventure</a></li>\n");
      out.write("                                    <li  ><a href=\"categories.jsp\">Thriller</a></li>\n");
      out.write("                                    <li ><a href=\"categories.jsp\">Romance</a></li>\n");
      out.write("                                </ul>\n");
      out.write("\n");
      out.write("                            </li>\n");
      out.write("                            <li><a href=\"start.jsp#about\"><span class=\"glyphicon glyphicon-info-sign\"></span>ABOUT</a></li>\n");
      out.write("                            <li><a href=\"start.jsp#contact\"><span class=\"glyphicon glyphicon-earphone\"></span>CONTACT</a></li>\n");
      out.write("\n");
      out.write("                            ");
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                            
      out.write("<li ><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\"></span>");
      out.print(name);
      out.write("</a></li>\n");
      out.write("                            <li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span>LOGIN|SIGNUP</a></li>\n");
      out.write("                            ");
 } else {
      out.write("<li ><a href=\"profile.jsp\"><span class=\"glyphicon glyphicon-user\"></span>");
      out.print(name);
      out.write("</a></li>\n");
      out.write("                            <li><a href=\"logout.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span>LOGOUT</a></li>  \n");
      out.write("                                ");
}
      out.write("\n");
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </div>\n");
      out.write("        <div class=\" header-middle\" style=\"background-color: #fff;\"><!--header-middle-->\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-6\" style=\"color:#cc0000;\">\n");
      out.write("                        <div class=\" pull-left\">\n");
      out.write("                            <a href=\"start.jsp\"><img src=\"paperbag-appicon.png\" alt=\"\" style=\"width:55px; height:50px;margin-right:8px;\" /></a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"search_box\">\n");
      out.write("                            <form class=\"navbar-form\" role=\"search\">\n");
      out.write("                                <div class=\"input-group add-on\">\n");
      out.write("                                    <input class=\"form-control\" placeholder=\"Search\" name=\"srch-term\" id=\"srch-term\" type=\"text\">\n");
      out.write("                                    <div class=\"input-group-btn\">\n");
      out.write("                                        <button class=\"btn btn-default\" type=\"submit\"><i class=\"glyphicon glyphicon-search\" style=\"color:#cc0000;\"></i></button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-6\">\n");
      out.write("                        <div class=\"shop-menu pull-right\">\n");
      out.write("                            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\n");
      out.write("                                <li><a href=\"\" ><span class=\"sub-menu\"><i class=\"fa fa-heart\"></i>Wishlist</span></a></li>\n");
      out.write("                                <li><a href=\"checkout.jsp\" ><span class=\"sub-menu\"><i class=\"fa fa-crosshairs\"></i>Checkout</span></a></li>\n");
      out.write("                                <li><a href=\"cart.jsp\"><span class=\"sub-menu\"><i class=\"fa fa-shopping-cart\"></i>Cart</span></a></li>\n");
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div><!--/header-middle-->\n");
      out.write("\n");
      out.write("        <section id=\"advertisement\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <img src=\"sale.jpg\" alt=\"offer\" />\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("            function showBooks(genre) {\n");
      out.write("                if (genre === \"\") {\n");
      out.write("                    return;\n");
      out.write("                }\n");
      out.write("                $(\"#featuredBooks\").remove();\n");
      out.write("                document.getElementById(\"heading\").innerHTML=genre;\n");
      out.write("               $(\"#heading\").show();\n");
      out.write("                try {\n");
      out.write("                    $.ajax({\n");
      out.write("                        type: \"GET\",\n");
      out.write("                        data: {catg: genre},\n");
      out.write("                        url: \"retrieveGenre.jsp\",\n");
      out.write("                        success: function (response) {\n");
      out.write("                            \n");
      out.write("                            $('.resultAjax').html(response);\n");
      out.write("                        }\n");
      out.write("                    });\n");
      out.write("                } catch (e)\n");
      out.write("                {\n");
      out.write("                    alert(\"Unable to connect to server\");\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            function showAuthors(author) {\n");
      out.write("                if (author === \"\") {\n");
      out.write("                    return;\n");
      out.write("                }\n");
      out.write("                $(\"#featuredBooks\").remove();\n");
      out.write("                  document.getElementById(\"heading\").innerHTML=author;\n");
      out.write("                 $(\"#heading\").show();\n");
      out.write("                try {\n");
      out.write("                    $.ajax({\n");
      out.write("                        type: \"GET\",\n");
      out.write("                        data: {auth: author},\n");
      out.write("                        url: \"retrieveAuthor.jsp\",\n");
      out.write("                        success: function (response) {\n");
      out.write("                            $('.resultAjax').html(response);\n");
      out.write("                        }\n");
      out.write("                    });\n");
      out.write("                } catch (e)\n");
      out.write("                {\n");
      out.write("                    alert(\"Unable to connect to server\");\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("        </script>    \n");
      out.write("\n");
      out.write("\n");
      out.write("        <section>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-3\">\n");
      out.write("                        <div class=\"left-sidebar\">\n");
      out.write("                            <h2>Category</h2>\n");
      out.write("                            <div class=\"panel-group category-products\" id=\"accordian\"><!--category-products-->\n");
      out.write("                                 ");
 ps = con.prepareStatement("select * from catgdetails");
            rs = ps.executeQuery();
            while (rs.next()) {
                
                 catg=rs.getString("category");
            
      out.write("\n");
      out.write("\n");
      out.write("                                <div class=\"panel panel-default\">\n");
      out.write("                                    <div class=\"panel-heading\">\n");
      out.write("                                        <h4 class=\"panel-title\"><a href=\"#\"  class=\"publ\" onclick=\"showBooks(this.textContent)\">");
      out.print( catg );
      out.write("</a></h4>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                  ");
  } 
      out.write("\n");
      out.write("                          \n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"brands_products\"><!--brands_products-->\n");
      out.write("                                <h2>Authors</h2>\n");
      out.write("\n");
      out.write("                                <div class=\"panel-group category-products\" id=\"accordian\"><!--category-products-->\n");
 ps = con.prepareStatement("select * from authdetails");
            rs = ps.executeQuery();
            while (rs.next()) {
                
                 auth=rs.getString("author");
            
      out.write("\n");
      out.write("                                    <div class=\"panel panel-default\">\n");
      out.write("                                        <div class=\"panel-heading\">\n");
      out.write("                                            <h4 class=\"panel-title\"><a href=\"#\"  class=\"publ\" onclick=\"showAuthors(this.textContent)\">");
      out.print( auth );
      out.write("</a></h4>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                  ");
 } 
      out.write("  \n");
      out.write("                                   \n");
      out.write("                                </div>\n");
      out.write("\n");
      out.write("                            </div><!--/brands_products--> \n");
      out.write("                            <div class=\"shipping text-center\"><!--shipping-->\n");
      out.write("                                <img src=\"colorful-sale-banner.jpg\" alt=\"\" />\n");
      out.write("                            </div><!--/shipping-->\n");
      out.write("\n");
      out.write("                        </div></div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-9 padding-right\">\n");
      out.write("                        <div class=\"features_items\"><!--features_items-->\n");
      out.write("                            \n");
      out.write("                            <div id=\"featuredBooks\">\n");
      out.write("                            </div>\n");
      out.write("                             <h2 class='title text-center' id='heading'></h2>\n");
      out.write("                            <div class=\"resultAjax\">\n");
      out.write("                          \n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <ul class=\"pagination\">\n");
      out.write("                            <li class=\"active\"><a href=\"\">1</a></li>\n");
      out.write("                            <li><a href=\"\">2</a></li>\n");
      out.write("                            <li><a href=\"\">3</a></li>\n");
      out.write("                            <li><a href=\"\">&raquo;</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div></div>\n");
      out.write("        </section>\n");
      out.write("<footer class=\"container-fluid backg3 text-center\">\n");
      out.write("  <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href=\"\" target=\"_blank\">IET Lucknow</a></p> \n");
      out.write("</footer>\n");
      out.write("        <script>\n");
      out.write("            $(function () {\n");
      out.write("                $(\".dropdown\").hover(\n");
      out.write("                        function () {\n");
      out.write("                            $('.dropdown-menu', this).stop(true, true).fadeIn(\"fast\");\n");
      out.write("                            $(this).toggleClass('open');\n");
      out.write("                            $('b', this).toggleClass(\"caret caret-up\");\n");
      out.write("                        },\n");
      out.write("                        function () {\n");
      out.write("                            $('.dropdown-menu', this).stop(true, true).fadeOut(\"fast\");\n");
      out.write("                            $(this).toggleClass('open');\n");
      out.write("                            $('b', this).toggleClass(\"caret caret-up\");\n");
      out.write("                        });\n");
      out.write("            });\n");
      out.write("        </script>    \n");
      out.write("\n");
      out.write("    </body></html>");
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
