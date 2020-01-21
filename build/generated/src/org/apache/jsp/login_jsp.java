package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write(" <meta charset=\"utf-8\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <!-- Bootstrap core CSS -->\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"https://fonts.googleapis.com/css?family=Lato\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"bootstrap/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"bootstrap/bootstrap-theme.min.css\" rel=\"stylesheet\">\n");
      out.write("  <title>Log In</title>\n");
      out.write("  <link rel=\"icon\" href=\"apple-touch-icon-precomposed.png\">\n");
      out.write("  <link href=\"bootstrap/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("   <link href=\"style.css\" rel=\"stylesheet\">\n");
      out.write(" </head>\n");
      out.write("<body id=\"myPage\" >\n");
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
      out.write("        <form class=\"navbar-form navbar-left\" role=\"search\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <input type=\"text\" class=\"form-control\" placeholder=\"Search\">\n");
      out.write("        </div>\n");
      out.write("        <button type=\"submit\" class=\"btn\"><span class=\"glyphicon glyphicon-search\"></span></button>\n");
      out.write("      </form>\n");
      out.write("      <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("           <li><a href=\"start.jsp\">RECOMMENDED</a></li>\n");
      out.write("\n");
      out.write("        <li class=\"dropdown\">\n");
      out.write("        <a href=\"#\"  class=\"dropdown-toggle\" data-toggle=\"dropdown\">CATEGORIES<b class=\"caret\"></b></a>\n");
      out.write("        <ul class=\"dropdown-menu\" role=\"menu\">\n");
      out.write("                  <li ><a href=\"#\" >Teens</a></li>\n");
      out.write("                  <li ><a href=\"#\">Kids</a></li>\n");
      out.write("                  <li ><a href=\"#\">Novels</a></li>\n");
      out.write("                   <li class=\"divider\"></li>\n");
      out.write("                  <li class=\"dropdown-header\">Genere</li>\n");
      out.write("                  <li  ><a href=\"#\">Thriller/Mystery</a></li>\n");
      out.write("                  <li ><a href=\"#\">Romance</a></li>\n");
      out.write("</ul>\n");
      out.write("\n");
      out.write("        </li>\n");
      out.write("        <li><a href=\"start.jsp\"><span class=\"glyphicon glyphicon-info-sign\"></span>ABOUT</a></li>\n");
      out.write("        <li><a href=\"start.jsp\"><span class=\"glyphicon glyphicon-earphone\"></span>CONTACT</a></li>\n");
      out.write("        <li class=\"active\"><a href=\"login.jsp\"><span class=\"glyphicon glyphicon-log-in\"></span>LOGIN</a></li>\n");
      out.write("        <li  ><a href=\"signup.jsp\"><span class=\"glyphicon glyphicon-user\"></span>SIGNUP</a></li>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("</div>\n");
      out.write("    <!--End of Navigation Bar-->\n");
      out.write("    <!--Login panel-->\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"card card-container\">\n");
      out.write("           \n");
      out.write("            <img id=\"profile-img\" class=\"profile-img-card\" src=\"images.jpg\" />\n");
      out.write("            <p id=\"profile-name\" class=\"profile-name-card\"></p>\n");
      out.write("            <form class=\"form-signin\">\n");
      out.write("                <span id=\"reauth-email\" class=\"reauth-email\"></span>\n");
      out.write("                <input type=\"email\" id=\"inputEmail\" class=\"form-control\" placeholder=\"Email address\" required autofocus>\n");
      out.write("                <input type=\"password\" id=\"inputPassword\" class=\"form-control\" placeholder=\"Password\" required>\n");
      out.write("                <div id=\"remember\" class=\"checkbox\">\n");
      out.write("                    <label>\n");
      out.write("                        <input type=\"checkbox\" value=\"remember-me\"> Remember me\n");
      out.write("                    </label>\n");
      out.write("                </div>\n");
      out.write("                <button class=\"btn btn-lg btn-primary btn-block btn-signin\" type=\"submit\">Sign in</button>\n");
      out.write("            </form><!-- /form -->\n");
      out.write("            <a href=\"#\" class=\"forgot-password\">\n");
      out.write("                Forgot the password?\n");
      out.write("            </a>\n");
      out.write("        </div><!-- /card-container -->\n");
      out.write("    </div><!-- /container -->\n");
      out.write("    \n");
      out.write("    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("    <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"bootstrap/jquery.min.js\"></script>\n");
      out.write("<script src=\"bootstrap/bootstrap.min.js\"></script>\n");
      out.write(" \n");
      out.write("    <script>\n");
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
      out.write("    </script>\n");
      out.write("  </body>\n");
      out.write("</html>  \n");
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
