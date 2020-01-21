package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
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

Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore",
            "root", "root");
    PreparedStatement ps;
    ResultSet rs;
    Statement stmt;

      out.write('\n');
      out.write("\n");
      out.write("\n");
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
      out.write("          \n");
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
      out.write("        <title>Checkout</title>\n");
      out.write("        <link rel=\"icon\" href=\"icon.png\">\n");
      out.write("        <link href=\"bootstrap/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"categories.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"cartstyle.css\" rel=\"stylesheet\">\n");
      out.write("        ");
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
             String chk = request.getParameter("chkout");

    if (chk == null) {
        
        response.sendRedirect("cart.jsp");

    }
        
      out.write("\n");
      out.write("         \n");
      out.write("    </head>\n");
      out.write("    <body id=\"myPage\">\n");
      out.write("        <div class=\"se-pre-con\"></div>\n");
      out.write("       \n");
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
      out.write("                            <li class=\"dropdown\">\n");
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
      out.write("                        <div class=\"shop-menu \">\n");
      out.write("                            <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\n");
      out.write("                                <li><a href=\"wishlist.jsp\" ><span class=\"sub-menu\"><i class=\"fa fa-heart\"></i>Wishlist</span>\n");
      out.write("                                 ");
 int c = 0;
                                            ps = con.prepareStatement("select * from bookstore.wishlist where email=?");
                                            ps.setString(1, session.getAttribute("userid") + "");
                                            rs = ps.executeQuery();
                                       while (rs.next()) {
                                           c++;
                                       }
      out.write("\n");
      out.write("                                        <span class=\"badge\">");
      out.print(c);
      out.write("</span> </a></li>\n");
      out.write("                                <li><a href=\"checkout.jsp\" ><span class=\"sub-menu\"><i class=\"fa fa-crosshairs\"></i>Checkout</span></a></li>\n");
      out.write("                                <li class=\"active\"><a href=\"cart.jsp\"><span class=\"sub-menu\"><i class=\"fa fa-shopping-cart\"></i>Cart</span>\n");
      out.write("                                   ");
  ps = con.prepareStatement("select * from bookstore.cart where email=? and status=?");
                                ps.setString(1, session.getAttribute("userid") + "");
                                ps.setInt(2, 0);
                                rs = ps.executeQuery();
                                int qt = 0;
                                while (rs.next()) {
                                 qt=qt+ rs.getInt("quantity"); 
                                }
      out.write("\n");
      out.write("                                            <span class=\"badge\">");
      out.print(qt );
      out.write("</span> </a></li>\n");
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div><!--/header-middle-->\n");
      out.write("       \n");
      out.write("        <section id=\"cart_items\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"breadcrumbs\">\n");
      out.write("                    <ol class=\"breadcrumb\">\n");
      out.write("                        <li><a href=\"start.jsp\">Home</a></li>\n");
      out.write("                        <li class=\"active\">Checkout</li>\n");
      out.write("                    </ol>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("\t\t\t\t<div class=\"row backg3\">\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6 container-fluid\">\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("  <h2 class=\"margin\">Shipping Details</h2>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><b>Name:</b></div>\n");
      out.write("      <div class=\"col-sm-6\">");
      out.print(name);
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><b>Email:</b></div>\n");
      out.write("      <div class=\"col-sm-6\">");
      out.print(session.getAttribute("userid"));
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><b>Contact:</b></div>\n");
      out.write("       <div class=\"col-sm-6\">");
      out.print( contact );
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><b>Date of Birth:</b></div>\n");
      out.write("       <div class=\"col-sm-6\">");
      out.print( dob );
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("  <br/>\n");
      out.write("  <div class=\"row\">\n");
      out.write("   <a href=\"profile.jsp#editProfile\" class=\"btn btn-primary btn-lg social-link\">\n");
      out.write("    <span class=\"glyphicon glyphicon-pencil\"></span> Edit Details\n");
      out.write("  </a>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-sm-6 container-fluid\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("  <h2 class=\"margin\">Shipping Address</h2>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><b>City:</b></div>\n");
      out.write("      <div class=\"col-sm-6\">");
      out.print(city);
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"row\">\n");
      out.write("      <div class=\"col-sm-6\"><b>Full Address:</b></div>\n");
      out.write("      <div class=\"col-sm-6\">");
      out.print(address);
      out.write("</div>\n");
      out.write("  </div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                   \t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("  \n");
      out.write("\t\t\t</div>\n");
      out.write("  \n");
      out.write("  <div >\n");
      out.write("\t\t\t\t<h2>Review & Payment</h2>\n");
      out.write("\t\t\t</div>\n");
      out.write("   <form action=\"requesthandle.jsp\" method=\"post\"> \n");
      out.write("  <div class=\"table-responsive cart_info\">\n");
      out.write("                          ");
 ArrayList ar = (ArrayList) session.getAttribute("itemlist");
                                                   if(ar.size()==0){
      out.write("\n");
      out.write("                     <img src=\"cart-empty.png\" class=\"image-responsive center-block\" style='height:200px; width:200px;' alt=\"\">\n");
      out.write("                                                  ");
 } else{ 
      out.write("\n");
      out.write("                            \n");
      out.write("                        <table class=\"table table-condensed\">\n");
      out.write("                            <thead>\n");
      out.write("                                <tr class=\"cart_menu\">\n");
      out.write("                                    <td>#</td>\n");
      out.write("                                    <td class=\"image\">Item</td>\n");
      out.write("                                    <td class=\"description\">Description</td>\n");
      out.write("                                    <td class=\"price\">Price</td>\n");
      out.write("                                    <td class=\"quantity\">Quantity</td>\n");
      out.write("                                    <td class=\"total\">Total</td>\n");
      out.write("                                    <td>Action</td>\n");
      out.write("                                </tr>\n");
      out.write("                            </thead>\n");
      out.write("                            <tbody>\n");
      out.write("                          ");

                                if (session.getAttribute("itemlist") != null) {
                                        ArrayList mycart = (ArrayList) session.getAttribute("itemlist");
                                        for (int i = 0; i < mycart.size(); i++) {
                                            Item it = (Item) mycart.get(i);
                                
      out.write("\n");
      out.write("                                <tr>\n");
      out.write("                                    <td >");
      out.print(i+1);
      out.write("</td>\n");
      out.write("                                  \n");
      out.write("                                    <td class=\"cart_product\"><a href=\"single.jsp?bid=");
      out.print(it.id );
      out.write("\"><img src=\"");
      out.print(it.source);
      out.write("\" class=\"image-responsive\" style='height:100px; width:auto;' alt=\"\"></a></td>\n");
      out.write("                                    <td class=\"cart_description\"><h4><a href=\"single.jsp?bid=");
      out.print(it.id );
      out.write('"');
      out.write('>');
      out.print(it.name);
      out.write("</a></h4></td> \n");
      out.write("                                    <td class=\"cart_price\"><p>$ &nbsp;");
      out.print(it.price);
      out.write("</p></td>\n");
      out.write("                                    <td class=\"cart_price\"><p>");
      out.print(it.quantity );
      out.write("</p></td>\n");
      out.write("                                    <td class=\"cart_price\"><p>$ &nbsp;");
      out.print(Double.parseDouble(it.price)*Integer.parseInt(it.quantity));
      out.write("</p></td>\n");
      out.write("                                    <td class=\"cart_delete\"><input name=\"del\" type=\"submit\" value=\"X\" class=\"btn btn-default check_out\" onclick=\"this.value =");
      out.print(i);
      out.write("\"></input></td>\n");
      out.write("                                </tr>\n");
      out.write("                                ");
}
                                    }
                              }
      out.write("</tbody></table>\n");
      out.write("                    </div>\n");
      out.write("                    <div>\n");
      out.write("                        <h2>Total Amount:\n");
      out.write("                        <span>$ &nbsp;");
 ArrayList mycart = (ArrayList) session.getAttribute("itemlist");
                                                                if(mycart.size()==0||mycart.isEmpty()) {out.print("0.0");
                                                                    
                                                                }else
                                                                    
                                                                    out.print(session.getAttribute("total"));
      out.write("</span>\n");
      out.write("                        </h2>  </div>\n");
      out.write("            </form>\n");
      out.write("   <form action=\"purchase\" method=\"post\"> \n");
      out.write("                        <div class=\"payment-options\"><h3>Payment Options</h3>\n");
      out.write("\t\t\t\t\t<span>\n");
      out.write("\t\t\t\t\t\t<label><input type=\"checkbox\"> Net banking</label>\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t<span>\n");
      out.write("\t\t\t\t\t\t<label><input type=\"checkbox\"> Debit/Credit card</label>\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t\t<span>\n");
      out.write("\t\t\t\t\t\t<label><input type=\"checkbox\"> Paypal</label>\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("                           <input type=\"submit\" value=\"Continue Payment\" class=\"btn btn-default check_out pull-right\"/>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("  \n");
      out.write("   </form>\n");
      out.write("  \n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <!-------------------------------------------------------------------------------------------------------------------------->       \n");
      out.write("        \n");
      out.write("\n");
      out.write("\n");
      out.write("    <footer class=\"container-fluid backg3 text-center\">\n");
      out.write("        <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href=\"\" target=\"_blank\">IET Lucknow</a></p> \n");
      out.write("    </footer>\n");
      out.write("    <script>\n");
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
      out.write("    </script>    \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("   ");
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
