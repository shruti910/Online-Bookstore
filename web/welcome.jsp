<%-- 
    Document   : welcome
    Created on : Jun 10, 2017, 4:14:39 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="bootstrap/jquery.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
        <script>
            //paste this code under head tag or in a seperate js file.
            // Wait for window load
            $(window).load(function () {
                // Animate loader off screen
                $(".se-pre-con").fadeOut("slow");
                ;
            });
        </script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap/bootstrap-theme.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
        <script src="bootstrap/bootstrap.min.js"></script>
<link href="style.css" rel="stylesheet">
<title>Welcome</title>
  <link rel="icon" href="icon.png">
<%String urole= session.getAttribute("role")+"";%>
    </head>
  
        <body id="myPage">
            <div class="se-pre-con"></div>
<div class="navbar-wrapper" >
<nav class="navbar  navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="sr-only">Toggle navigation</span>
          <i class="fa fa-bars fa-lg tgl"></i>                   
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
                  <li><a href="categories.jsp">Adventure</a></li>
                   
                  <li ><a href="categories.jsp">Thriller</a></li>
                  <li><a href="categories.jsp">Romance</a></li>
</ul>

        </li>
        <li><a href="start.jsp#about"><span class="glyphicon glyphicon-info-sign"></span>ABOUT</a></li>
        <li><a href="start.jsp#contact"><span class="glyphicon glyphicon-earphone"></span>CONTACT</a></li>
        <%  if (urole.equalsIgnoreCase("user")) { %>
        <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>CART</a></li>
         <% } %>
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN</a></li>
        <li  class="active"><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span>SIGNUP</a></li>
        
      </ul>
    </div>
  </div>
</nav>
</div>
            <div class="jumbotron text-center">
        <h2 style="color:white;">Registration is Successful.
            Please Login Here <a id="link" style="text-decoration: none; color:yellow;" href='login.jsp'>Go to Login</a></h2> </div>
<footer class="container-fluid backg3 text-center">
  <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href="" target="_blank">IET Lucknow</a></p> 
</footer>
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
