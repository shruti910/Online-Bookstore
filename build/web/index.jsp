<%-- 
    Document   : index
    Created on : Jul 30, 2017, 3:12:53 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@ page import ="java.sql.*" %>
<%@include file="connection.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Bookstore site">
        <meta name="author" content="">
        <link rel="icon" href="icon.png">
        <title>Bookstore</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap/bootstrap-theme.min.css" rel="stylesheet">
        <link href="coverstyle.css" rel="stylesheet">
         <%        String name = "";
          String urole= session.getAttribute("role")+"";
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
        %>
    </head>
    <body>
        <div class="site-wrapper">

            <div class="site-wrapper-inner">

                <div class="cover-container">

                    <div class="masthead clearfix">
                        <div class="inner">
                            <h3 class="masthead-brand"><b>BOOKSTORE</b></h3>
                            <ul class="nav masthead-nav">
                                <li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
                                 <%if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                                     %>
                                 
                                <li><a href="login.jsp">Login</a></li>
                                <li><a href="signup.jsp">Signup</a></li>
                                <% } else{ if(urole.equalsIgnoreCase("admin")){ %>
                                <li><a href="admin.jsp">Dashboard</a></li> <% } else { %>
                                <li><a href="order.jsp">Your Orders</a></li> <% } %>
                                <li><a href="logout.jsp">Logout</a></li>
                                <% } %>
                            </ul>
                        </div>
                    </div>

                    <div class="inner cover">
                        <h1 class="cover-heading" style="font-family: Somatic Rounded;">Welcome Bookaholics!</h1>
                        <p class="lead" style="font-family: Somatic Rounded;">Immerse yourselves in the beauty of portable magic that are Books!</p>
                        <p class="lead">
                            <a href="start.jsp" class="btn btn-lg btn-default">Let's Start!</a>
                        </p>
                    </div>

                    <div class="mastfoot">
                        <div class="inner">
                            <p style="color:white;">© 2017 Bookstore. All Rights Reserved | Design by  <a href="#" target="_blank">IET Lucknow</a></p> 


                        </div>
                    </div>

                </div>

            </div>

        </div>
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script src="bootstrap/jquery.min.js"></script>
        <script src="bootstrap/bootstrap.min.js"></script>
        <script src="bootstrap/docs.min.js"></script>
    </body>
</html>
