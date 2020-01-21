<%-- 
    Document   : Cancelcart
    Created on : Jul 26, 2017, 2:38:31 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ include file="connection.jsp" %>
<%@ page session="true"%>
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="style.css" rel="stylesheet">
<%
    
String bid = request.getParameter("bid");
 try{
    
    
  ps = con.prepareStatement("update bookstore.cart set status=? where bid=? and email=? and status=?");
    ps.setInt(1,3);
  ps.setInt(2, Integer.parseInt(bid));
     ps.setString(3, session.getAttribute("userid") + "");
     ps.setInt(4, 1);
   ps.executeUpdate();
   con.close();%>
   <div class="jumbotron text-center"><strong> Selected Order is Cancelled..</strong><br/>
       <h3>Amount will be refunded..</h3>
       <a href="order.jsp">View Order</a>
      </div>
  <% 
 }
 catch(Exception e){
    e.printStackTrace();
 }
   %>