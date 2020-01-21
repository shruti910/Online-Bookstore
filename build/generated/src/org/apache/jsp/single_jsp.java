package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class single_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html lang=\"en\" class=\"no-js\">\n");
      out.write("<head>\n");
      out.write(" <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <script src=\"bootstrap/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js\"></script>\n");
      out.write("  <script>\n");
      out.write("\t// Wait for window load\n");
      out.write("\t$(window).load(function() {\n");
      out.write("\t\t// Animate loader off screen\n");
      out.write("\t\t$(\".se-pre-con\").fadeOut(\"slow\");;\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Lato\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("  <link href=\"bootstrap/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"bootstrap/bootstrap-theme.min.css\" rel=\"stylesheet\">\n");
      out.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"bootstrap/bootstrap.min.js\"></script>\n");
      out.write(" \n");
      out.write("  <title>Bookstore</title>\n");
      out.write("  <link rel=\"icon\" href=\"apple-touch-icon-precomposed.png\">\n");
      out.write("  <link href=\"bootstrap/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("   <link href=\"style.css\" rel=\"stylesheet\">\n");
      out.write("   <link href=\"categories.css\" rel=\"stylesheet\">\n");
      out.write("    ");
 
String name="";
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == ""))
    { name="GUEST";
    }

 else {
ps = con.prepareStatement("select * from bookstore.userdetails where email= ?");
  ps.setString(1,session.getAttribute("userid")+"");
rs=ps.executeQuery();
if(rs.next()){
name=rs.getString("uname");

}
}

      out.write("\n");
      out.write("   \n");
      out.write("  </head>\n");
      out.write("  <body id=\"myPage\" >\n");
      out.write("   \n");
      out.write("    <div class=\"se-pre-con\"></div>\n");
      out.write("<div class=\"navbar-wrapper\" >\n");
      out.write("<nav class=\"navbar  navbar-fixed-top\" role=\"navigation\">\n");
      out.write("  <div class=\"container\">\n");
      out.write("    <div class=\"navbar-header\">\n");
      out.write("      <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("          <span class=\"icon-bar\" style=\"background-color:#000000;\"></span>\n");
      out.write("        <span class=\"icon-bar\" style=\"background-color:#000000;\"></span>\n");
      out.write("        <span class=\"icon-bar\" style=\"background-color:#000000;\"></span>                        \n");
      out.write("      </button>\n");
      out.write("      <a class=\"navbar-brand\" href=\"index.html\"><span class=\"glyphicon glyphicon-home\"></span>&nbsp;Home</a>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("    \n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("           <li><a href=\"start.jsp#rec\">RECOMMENDED</a></li>\n");
      out.write("\n");
      out.write("        <li class=\"dropdown active\">\n");
      out.write("        <a href=\"categories.jsp\"  class=\"dropdown-toggle\" data-toggle=\"dropdown\">CATEGORIES<b class=\"caret\"></b></a>\n");
      out.write("        <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                  <li ><a href=\"categories.jsp\" >Teens</a></li>\n");
      out.write("                  <li ><a href=\"categories.jsp\">Kids</a></li>\n");
      out.write("                  <li ><a href=\"categories.jsp\">Novels</a></li>\n");
      out.write("                   <li class=\"divider\"></li>\n");
      out.write("                  <li class=\"dropdown-header\">Genere</li>\n");
      out.write("                  <li  ><a href=\"categories.jsp\">Thriller/Mystery</a></li>\n");
      out.write("                  <li ><a href=\"categories.jsp\">Romance</a></li>\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("        </li>\n");
      out.write("        <li><a href=\"start.jsp#about\"><span class=\"glyphicon glyphicon-info-sign\"></span>ABOUT</a></li>\n");
      out.write("        <li><a href=\"start.jsp#contact\"><span class=\"glyphicon glyphicon-earphone\"></span>CONTACT</a></li>\n");
      out.write("        \n");
      out.write("        ");
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")){
        
      out.write("<li ><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\"></span>");
      out.print(name);
      out.write("</a></li>\n");
      out.write("        <li><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span>LOGIN|SIGNUP</a></li>\n");
      out.write("        ");
 }
else{
      out.write("<li ><a href=\"profile.jsp\"><span class=\"glyphicon glyphicon-user\"></span>");
      out.print(name);
      out.write("</a></li>\n");
      out.write("      <li><a href=\"logout.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span>LOGOUT</a></li>  \n");
}
      out.write("\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("</div>\n");
      out.write("<div class=\" header-middle\" style=\"background-color: #fff;\"><!--header-middle-->\n");
      out.write("    <div class=\"container\">\n");
      out.write("<div class=\"row\">\n");
      out.write("\t<div class=\"col-sm-6\" style=\"color:#cc0000;\">\n");
      out.write("\t\t<div class=\" pull-left\">\n");
      out.write("\t<a href=\"start.jsp\"><img src=\"paperbag-appicon.png\" alt=\"\" style=\"width:55px; height:50px;margin-right:8px;\" /></a>\n");
      out.write("\t\t</div>\n");
      out.write("           \t<div class=\"search_box\">\n");
      out.write("\t\t<form class=\"navbar-form\" role=\"search\">\n");
      out.write("    <div class=\"input-group add-on\">\n");
      out.write("      <input class=\"form-control\" placeholder=\"Search\" name=\"srch-term\" id=\"srch-term\" type=\"text\">\n");
      out.write("      <div class=\"input-group-btn\">\n");
      out.write("        <button class=\"btn btn-default\" type=\"submit\"><i class=\"glyphicon glyphicon-search\" style=\"color:#cc0000;\"></i></button>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </form>\n");
      out.write("\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\n");
      out.write("\t</div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("    \n");
      out.write("    <div class=\"col-sm-6\">\n");
      out.write("\t<div class=\"shop-menu pull-right\">\n");
      out.write("\t\t<ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("\t\t\t\n");
      out.write("                    <li><a href=\"\" ><span class=\"sub-menu\"><i class=\"fa fa-heart\"></i>Wishlist</span></a></li>\n");
      out.write("                    <li><a href=\"checkout.html\" ><span class=\"sub-menu\"><i class=\"fa fa-crosshairs\"></i>Checkout</span></a></li>\n");
      out.write("                    <li><a href=\"cart.html\"><span class=\"sub-menu\"><i class=\"fa fa-shopping-cart\"></i>Cart</span></a></li>\n");
      out.write("\t\t\t\n");
      out.write("\t\t</ul>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t</div><!--/header-middle-->\n");
      out.write("                \n");
      out.write("                <div class=\"main\" style=\"margin-top: 40px;\">\n");
      out.write("    ");
 try{ 
       
    
                ps = con.prepareStatement("select * from bookstore.bookdetails where bid='3'");

rs=ps.executeQuery();
if(rs.next()) {
String bookname=rs.getString("bname");    
String imgs =rs.getString("bsource"); 
String author=rs.getString("bauthor");
String isbn=rs.getString("isbn");
String publ=rs.getString("publisher");
String pubdate=rs.getString("pubdate");
String edn=rs.getString("edition");
int pages=rs.getInt("pages");
int sales=rs.getInt("sales");
String dmn=rs.getString("dimension");
String description=rs.getString("description");
float price=rs.getFloat("price");
       

      out.write("\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-md-9 padding-left\">\n");
      out.write("\t\t\t\t   <div class=\"product-details\">\n");
      out.write("                                       <div class=\"col-sm-5\">\n");
      out.write("                                           <div class=\"view_product\">\n");
      out.write("\t\t\t\t\t   <img src=\"");
      out.print(imgs);
      out.write("\" alt=\" image\" />\n");
      out.write("                                           <h3>New!</h3>\n");
      out.write("                                       </div>\n");
      out.write("\t\t\t\t      \n");
      out.write("\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t        <div class=\"col-sm-7 text-center \">\n");
      out.write("                                            <h2 class=\"book-title text-capitalize\">");
      out.print(bookname);
      out.write("</h2>\n");
      out.write("       <div class=\"product-info desc\">                                       \n");
      out.write("                                             \n");
      out.write("      <h4> Product Details: </h4>\n");
      out.write("       <div class=\"well\">\n");
      out.write("           <p class=\"criteria pull-left\">Author:</p><p >");
      out.print(author );
      out.write(" </p>\n");
      out.write("           <p class=\"criteria pull-left\" > ISBN-13:</p><p >");
      out.print(isbn );
      out.write("</p>\n");
      out.write("           <p class=\"criteria pull-left\">Publisher:</p><p >");
      out.print(publ );
      out.write("</p>\n");
      out.write("           <p class=\"criteria pull-left\">Publication date:</p><p >");
      out.print(pubdate );
      out.write("</p>\n");
      out.write("           <p class=\"criteria pull-left\">Edition description:</p><p >");
      out.print(edn );
      out.write("</p>\n");
      out.write("           <p class=\"criteria pull-left\">Pages:</p><p >");
      out.print(pages );
      out.write("</p>\n");
      out.write("           <p class=\"criteria pull-left\">Sales rank:</p><p>");
      out.print(sales );
      out.write("</p>\n");
      out.write("           <p class=\"criteria pull-left\">Product dimensions:</p><p >");
      out.print(dmn );
      out.write("</p>\n");
      out.write("\t\n");
      out.write("  </div>\t\t\t\t        \t\n");
      out.write("      <div>\n");
      out.write("\t\t\t\t\t\t\t<button type=\"button\" id=\"add-to-wish\" class=\"social-link\">\n");
      out.write("                       <i class=\"glyphicon glyphicon-heart\"></i><a href=\"#\">Add to wishlist</a>\n");
      out.write("                                                        </button></div>\n");
      out.write("\t\t\t\t\t\t\t<div class=\"social_buttons\">\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t<button type=\"button\" class=\"social-link\" id=\"tweet\" onclick=\"\">\n");
      out.write("\t\t\t\t\t              <i class=\"fa fa-twitter-square\"></i> Tweet\n");
      out.write("\t\t\t\t\t            </button>\n");
      out.write("\t\t\t\t\t           \n");
      out.write("\t\t\t\t\t             <button type=\"button\" class=\"social-link\" id=\"gplus\" onclick=\"\">\n");
      out.write("\t\t\t\t\t              <i class=\"fa fa-google-plus-square\"></i> Google+\n");
      out.write("\t\t\t\t\t            </button>\n");
      out.write("                                                             <button type=\"button\" class=\"social-link\" id=\"fb\"  onclick=\"\">\n");
      out.write("\t\t\t\t\t              <i class=\"fa fa-facebook-square\"></i> Share\n");
      out.write("\t\t\t\t\t            </button>\n");
      out.write("\t\t\t\t\t            <button type=\"button\" class=\"social-link\" id=\"pin\" onclick=\"\">\n");
      out.write("\t\t\t\t\t              <i class=\"fa fa-pinterest-square\"></i> Pinterest\n");
      out.write("\t\t\t\t\t            </button>\n");
      out.write("\t\t\t\t\t        </div>\n");
      out.write("\t\t\t\t        </div>\n");
      out.write("                                        </div>\n");
      out.write("                                   </div>     \n");
      out.write("\t\t\t\t</div>\n");
      out.write("                            <div class=\"col-md-3\">\n");
      out.write("\t\t\t\t  <div class=\"box-info-product\">\n");
      out.write("\t\t\t\t\t<p class=\"price2\">$");
      out.print(price);
      out.write("</p>\n");
      out.write("\t\t\t\t\t       <div class=\"qty\">\n");
      out.write("\t\t\t\t\t\t\t\tQuantity:\n");
      out.write("\t\t\t\t\t\t\t\t<select>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>1</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>2</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>3</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>4</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>5</option>\n");
      out.write("\t\t\t\t\t\t\t\t\t<option>6</option>\n");
      out.write("\t\t\t\t\t\t\t\t</select>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t<button type=\"submit\" name=\"Submit\" class=\"exclusive\">\n");
      out.write("\t\t\t\t\t\t\t   <span>Add to cart</span>\n");
      out.write("\t\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t   </div>\n");
      out.write("\t\t\t   </div>\n");
      out.write("\t\t\t</div>\t\n");
      out.write("                    <div class=\"desc row\" >\n");
      out.write("\t\t\t   \t<h4 class=\"text-center\">Description</h4>\n");
      out.write("                                <p>\n");
      out.write("          ");
      out.print(description);
      out.write("\n");
      out.write("                                </p>\n");
      out.write("\t\t\t</div>\n");
      out.write("                              ");
   } }
catch(Exception e){
out.println("cannot find the book! Please try later !");
}
      out.write("\n");
      out.write("                    <div class=\" desc row\" >\n");
      out.write("                        <h4 class=\"text-center\">SIMILAR BOOKS</h4>\n");
      out.write("                     <div id=\"similar-product\" class=\"carousel slide\" data-ride=\"carousel\" data-interval=\"4000\">\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t  <!-- Wrapper for slides -->\n");
      out.write("\t\t\t\t\t\t\t\t    <div class=\"carousel-inner\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item active\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  <a href=\"\"><img src=\"lord.jpg\" alt=\"\" class=\"img-responsive\" ></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  <a href=\"\"><img src=\"lost_symbol.jpg\" alt=\"\" class=\"img-responsive\"></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  <a href=\"\"><img src=\"mockingbird.jpg\" alt=\"\" class=\"img-responsive\" ></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  <a href=\"\"><img src=\"the-girl-on-the-train.jpg\" alt=\"\" class=\"img-responsive\"></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  <a href=\"\"><img src=\"fault-in-our-stars.jpg\" alt=\"\" class=\"img-responsive\" ></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  <a href=\"\"><img src=\"got.jpg\" alt=\"\" class=\"img-responsive\" ></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item\">\n");
      out.write("                                                                                    <a href=\"\"><img src=\"suns.jpg\" alt=\"\" class=\"img-responsive\" ></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t  <a href=\"\"><img src=\"alchemist.jpg\" alt=\"\" class=\"img-responsive\" ></a>\n");
      out.write("                                                                                  <a href=\"\"><img src=\"allthelight.jpg\" alt=\"\" class=\"img-responsive\" ></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("                                                                  \n");
      out.write("\t\t\t\t\t\t\t\t  <!-- Controls -->\n");
      out.write("\t\t\t\t\t\t\t\t  <a class=\"left carousel-control item-control\" href=\"#similar-product\" data-slide=\"prev\" role=\"button\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fa fa-angle-left\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t  </a>\n");
      out.write("\t\t\t\t\t\t\t\t  <a class=\"right carousel-control item-control\" href=\"#similar-product\" data-slide=\"next\" role=\"button\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fa fa-angle-right\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t  </a>\n");
      out.write("                     </div></div>\n");
      out.write("                  \n");
      out.write("\t     </div>\n");
      out.write("\t   \n");
      out.write("\t  </div>\n");
      out.write("<script>\n");
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
      out.write("  </body></html>");
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
