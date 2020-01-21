package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.*;

public final class editProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String Catg = "";
            int cno;
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
      out.write("                <a href=\"Deletebook.jsp\">Delete Product</a>\n");
      out.write("                <a href=\"editBook.jsp\">Edit Product Details</a>\n");
      out.write("                <a href=\"editAuthor.jsp\">Add/Delete Authors</a>\n");
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
      out.write("                            <a class=\"toggle-btn pull-right\" onclick=\"openNav()\" data-toggle=\"tooltip\" title=\"Options\" data-placement=\" auto bottom\"><i class=\"fa fa-list tgl\" aria-hidden=\"true\"></i></a>\n");
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
      out.write("                <div class=\"tab-content\">\n");
      out.write("                    <h3 class=\"form-heading\">Add New Book Details</h3>\n");
      out.write("                    \n");
      out.write("                    <form class=\"form-horizontal\"  method=\"POST\" >\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"bname\" class=\"col-sm-4 control-label col-md-offset-4\">\n");
      out.write("                                <span class=\" center-block text-center\">Book's Name<span style=\"color:red;\">*</span>:</span></label>\n");
      out.write("\n");
      out.write("                            <div class='input-group'>\n");
      out.write("                                <input class=\"form-control\"  placeholder=\"Book name\" name=\"bname\" required >\n");
      out.write("                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"auth\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Author<span style=\"color:red;\">*</span>:</span></label>\n");
      out.write("\n");
      out.write("                            <div class='input-group'>\n");
      out.write("                                <input class=\"form-control\"  placeholder=\"Author\" name=\"auth\" required>\n");
      out.write("                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"isbn\" class=\"col-sm-4 control-label \"> <span class=\" center-block text-center\">ISBN<span style=\"color:red;\">*</span>:</span></label>\n");
      out.write("\n");
      out.write("                            <div class='input-group'>\n");
      out.write("                                <input class=\"form-control\"  placeholder=\"ISBN number\" name=\"isbn\" required=\"true\" >\n");
      out.write("                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"pub\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Publisher:</span></label>\n");
      out.write("\n");
      out.write("                            <div class='input-group'>\n");
      out.write("                                <input class=\"form-control\"  placeholder=\"Publisher\" name=\"pub\" >\n");
      out.write("                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"pubdt\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Publication Date:</span></label>\n");
      out.write("\n");
      out.write("                            <div class='input-group'>\n");
      out.write("                                <input class=\"form-control\"  placeholder=\"Publication Date\" name=\"pubdt\" >\n");
      out.write("                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"ed\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Edition:</span></label>\n");
      out.write("\n");
      out.write("                            <div class='input-group'>\n");
      out.write("                                <input class=\"form-control\"  placeholder=\"Edition\" name=\"ed\" >\n");
      out.write("                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"page\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Number of Pages:</span></label>\n");
      out.write("\n");
      out.write("                            <div class='input-group'>\n");
      out.write("                                <input class=\"form-control\"  placeholder=\"Pages\" value=\"0\" name=\"page\" >\n");
      out.write("                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"sales\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Sales Ranking:</span></label>\n");
      out.write("\n");
      out.write("                            <div class='input-group'>\n");
      out.write("                                <input class=\"form-control\"  placeholder=\"Sales Rank\" value=\"0\" name=\"sales\" >\n");
      out.write("                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"dmn\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Dimension of Product:</span></label>\n");
      out.write("\n");
      out.write("                            <div class='input-group'>\n");
      out.write("                                <input class=\"form-control\"  placeholder=\"Dimensions (Ex. 5.20(w) x 7.90(h) x 1.00(d))\" name=\"dmn\" >\n");
      out.write("                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"price\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Price<span style=\"color:red;\">*</span>:</span></label>\n");
      out.write("\n");
      out.write("                            <div class='input-group'>\n");
      out.write("                                <input class=\"form-control\"  placeholder=\"Price in Dollars ($)\" name=\"price\" required=\"true\" >\n");
      out.write("                                <span class=\"input-group-addon\"><i class=\"glyphicon glyphicon-pencil\"></i></span>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"catg\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Category<span style=\"color:red;\">*</span>:</span></label>\n");
      out.write("  <div class=\"col-sm-8\">\n");
      out.write("        <select name=\"selcat\" class=\" form-control\">\n");
      out.write("                            ");
   ps = con.prepareStatement("select category from catgdetails");
            rs = ps.executeQuery();
            while (rs.next()) {
                 Catg=rs.getString("category");
               
      out.write("\n");
      out.write("    <option value=\"");
      out.print(Catg);
      out.write("\"> ");
      out.print(Catg );
      out.write("</option>\n");
      out.write("   ");
 } 
      out.write("\n");
      out.write("  </select> \n");
      out.write("  <button type=\"button\" class='btn btn-default btn-sm pull-right'><a href=\"editCatg.jsp\">Add New Category</a></button>\n");
      out.write("                           </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("                            <label for=\"catg\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Description<span style=\"color:red;\">*</span>:</span></label>\n");
      out.write("                            <div class='col-sm-8'>\n");
      out.write("                                <textarea class=\"form-control\"  name=\"description\" placeholder=\"Short Description\" rows=\"5\" required=\"true\"></textarea><br>\n");
      out.write("                            </div>   </div>\n");
      out.write("\n");
      out.write("  <div class=\" form-group row\">\n");
      out.write("      <label for=\"picname\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Image:</span></label>\n");
      out.write("\n");
      out.write("                                <div class='input-group'>\n");
      out.write("                                    <input class=\"form-control\"  id=\"picnm\" name=\"picname\"  readonly=\"readonly\">\n");
      out.write("                                    \n");
      out.write("                               </div>                     \n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("                        <div class=\"form-group row\">\n");
      out.write("\n");
      out.write("                            <button type=\"submit\" name=\"submit\"  class=\"btn btn-lg btn-primary col-sm-3 center-block \">SUBMIT</button>\n");
      out.write("\n");
      out.write("                            <button type=\"reset\" name=\"reset\" class=\"btn btn-lg btn-danger col-sm-3 center-block pull-right\">CANCEL</button>\t\t\t\t\t\t\n");
      out.write("                            <  \n");
      out.write("                        </div>\n");
      out.write("                    </form> \n");
      out.write("   <form method=\"POST\" action=\"upload\" enctype=\"multipart/form-data\" >\n");
      out.write("        <div class=\"form-group row\">\n");
      out.write("    <label for=\"fileupload\" class=\"col-sm-4 control-label\"> <span class=\" center-block text-center\">Upload image of book<span style=\"color:red;\">*</span>:</span></label>\n");
      out.write("                            <!--<div class='input-group col-sm-6'>-->\n");
      out.write("               <input type=\"file\" id=\"file\" name='file' class='col-sm-4' required=\"true\" onmouseout=\"myFunction()\">\n");
      out.write("                            <button type=\"submit\" class='btn btn-default btn-sm col-sm-4' >Upload\n");
      out.write("<i class=\"fa fa-upload\" aria-hidden=\"true\"></i></button>\n");
      out.write("        </div>\n");
      out.write("                            </form>\n");
      out.write("                </div> </div>\n");
      out.write("               \n");
      out.write(" </section>\n");
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
      out.write("                         });\n");
      out.write("            });\n");
      out.write("             $(document).ready(function(){\n");
      out.write("    $('[data-toggle=\"tooltip\"]').tooltip(); \n");
      out.write("   \n");
      out.write("});\n");
      out.write("\n");
      out.write("            /* Set the width of the side navigation to 250px and the left margin of the page content to 250px */\n");
      out.write("            function openNav() {\n");
      out.write("                document.getElementById(\"mySidenav\").style.width = \"250px\";\n");
      out.write("                document.getElementById(\"main\").style.marginLeft = \"250px\";\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /* Set the width of the side navigation to 0 and the left margin of the page content to 0 */\n");
      out.write("            function closeNav() {\n");
      out.write("                document.getElementById(\"mySidenav\").style.width = \"0\";\n");
      out.write("                document.getElementById(\"main\").style.marginLeft = \"0\";\n");
      out.write("            }\n");
      out.write("\n");
      out.write("           function myFunction(){\n");
      out.write("              var x = document.getElementById(\"file\").files[0].name;\n");
      out.write("             // var x =document.getElementById(\"file\").value;\n");
      out.write("                document.getElementById(\"picnm\").value = x;\n");
      out.write("           }\n");
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
