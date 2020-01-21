<%-- 
    Document   : signuperror
    Created on : Jun 10, 2017, 5:12:38 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/bootstrap-theme.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="bootstrap/jquery.min.js"></script>
<script src="bootstrap/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="style.css" rel="stylesheet">
<title>Oops!</title>
  <link rel="icon" href="icon.png">

    </head>
        <body id="myPage" >
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
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN</a></li>
        <li  class="active"><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span>SIGNUP</a></li>
        
      </ul>
    </div>
  </div>
</nav>
</div>
        <div class="jumbotron text-center">
<h3>Sorry ! An Error occurred!</h3>
<h4>Exception is :<i> <%=exception%></i></h4>
<p>What happened: you may have submitted email which already existed. Try again with a different email address.</p>
<p><a id="link" style="text-decoration: none; color:yellow;" href="signup.jsp"> Go to Signup </a></p></div>
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