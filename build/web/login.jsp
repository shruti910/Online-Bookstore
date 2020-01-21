<%-- 
    Document   : login
    Created on : Jun 10, 2017, 11:14:42 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<%@page session="true" %>
<%@include file="connection.jsp" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <script src="bootstrap/jquery.min.js"></script>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
  <script>
	
	// Wait for window load
	$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");
	});
</script>

  <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/bootstrap-theme.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="bootstrap/bootstrap.min.js"></script>
  <title>Log In</title>
  <link rel="icon" href="icon.png">
  <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
   <link href="style.css" rel="stylesheet">
   <link href="login.css" rel="stylesheet">
   <%String urole= session.getAttribute("role")+"";%>
 </head>
<body id="myPage" >
    <div class="se-pre-con"></div>
<div class="navbar-wrapper" >
<nav class="navbar  navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="sr-only">Toggle navigation</span>
         <i class="fa fa-bars fa-lg"></i>        
      </button>
      <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
           <li><a href="start.jsp#rec">RECOMMENDED</a></li>

        <li class="dropdown">
        <a href="start.jsp#catg"  class="dropdown-toggle" data-toggle="dropdown">CATEGORIES<b class="caret"></b></a>
        <ul class="dropdown-menu" role="menu">
                  <li ><a href="categories.jsp" >Fantasy</a></li>
                  <li ><a href="categories.jsp">Drama</a></li>
                  <li ><a href="categories.jsp">Adventure</a></li>
                  
                  <li  ><a href="categories.jsp">Thriller</a></li>
                  <li ><a href="categories.jsp">Romance</a></li>
</ul>

        </li>
        <li><a href="start.jsp#about"><span class="glyphicon glyphicon-info-sign"></span>ABOUT</a></li>
        <li><a href="start.jsp#contact"><span class="glyphicon glyphicon-earphone"></span>CONTACT</a></li>
        <%  if (urole.equalsIgnoreCase("user")) { %>
        <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>CART</a></li>
        <% } %>
        <li class="active"><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN</a></li>
        <li  ><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span>SIGNUP</a></li>
        
      </ul>
    </div>
  </div>
</nav>
</div>
    <!--End of Navigation Bar-->
    <!--Login panel-->
    <div class="container">
        <div class="row main">
        <div class="panel-heading">
	             <div class="panel-title text-center">
	               		<h1 class="title">LOG IN</h1>
	               		<hr />
	               	</div>
	            </div> 
        <div class="card card-container">
           
            <img id="profile-img" class="profile-img-card img-circle img-responsive" src="user.png" alt="user" />
            
            <form class="form-signin">
               <div class='form-group'>
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name='eml' required autofocus>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" name='pwd' required>
               </div>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                </div>
                <button class="btn btn-lg btn-primary btn-block btn-signin" type="submit">Log in</button>
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                Forgot the password?
            </a><a href ="signup.jsp" class="forgot-password pull-right">Create new account</a>
        </div><!-- /card-container -->
         <%
    String userid = request.getParameter("eml");    
    String pwd = request.getParameter("pwd");
    String role="";
    if(userid==null){}
    else{ if(userid.length()==0){}
    
    else{
    Statement st = con.createStatement();
     
    rs = st.executeQuery("select * from bookstore.userdetails  where email='" + userid + "' and upassword='" + pwd + "'");
    if (rs.next()) {
        // HttpSession mysession = request.getSession();
        role=rs.getString("role");
        session.setMaxInactiveInterval(86400); //24 hours
        session.setAttribute("userid", userid);
        session.setAttribute("role", role);
        if((role.equalsIgnoreCase("admin")) && (userid.equalsIgnoreCase("null"))){ response.sendRedirect("login.jsp");}
       else if(role.equalsIgnoreCase("admin")){
           
            response.sendRedirect("admin.jsp");}
        if(role.equalsIgnoreCase("user")){ 
            
            response.sendRedirect("categories.jsp");
        }
        
       } else {
         %>
        <div class="alert alert-danger" role="alert">
        <strong> Invalid Entries!!</strong> Please try again!
      </div>
        <%
            }
       
    }
}
 %>
        </div>
    </div><!-- /container -->
    <footer class="container-fluid backg3 text-center">
  <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href="" target="_blank">IET Lucknow</a></p> 
</footer>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    
<script src="bootstrap/jquery.min.js"></script>

 
    <script>
        $(function(){
    $(".dropdown").hover(            
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeIn("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            },
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeOut("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            });
    });
    </script>
  
  </body>
</html>  
