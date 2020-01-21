<%-- 
    Document   : deletewishlist
    Created on : Jul 23, 2017, 4:51:30 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ include file="connection.jsp" %>
<%@ page session="true"%>
<%
    
String bid = request.getParameter("bid");
 try{
    
    
  ps = con.prepareStatement("delete from bookstore.wishlist where bid=? and email=?");
    ps.setInt(1, Integer.parseInt(bid));
    ps.setString(2, session.getAttribute("userid") + "");
   ps.executeUpdate();
   con.close();%>
   <div><strong> Selected Book's Entry is Deleted from your Wish List..</strong></div>
  <% response.sendRedirect("wishlist.jsp");
   return;
 }
 catch(Exception e){
    e.printStackTrace();
 }
   %>
