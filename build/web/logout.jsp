<%-- 
    Document   : logout
    Created on : Jun 15, 2017, 1:38:29 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="style.css" rel="stylesheet">
<%
session.setAttribute("userid", null);
session.invalidate();
%>

<div class="jumbotron text-center">
<h2>You are logged out...</h2>
<p>Click here to <a href="login.jsp">login</a> again..</p>
<p><a href="index.jsp">HOME</a></p>
</div>