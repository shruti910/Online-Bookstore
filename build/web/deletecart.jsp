<%-- 
    Document   : deletecart
    Created on : Jul 26, 2017, 12:26:52 AM
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
    
    
  ps = con.prepareStatement("delete from bookstore.cart where bid=? and email=? and status=?");
    ps.setInt(1, Integer.parseInt(bid));
     ps.setString(2, session.getAttribute("userid") + "");
     ps.setInt(3, 0);
   ps.executeUpdate();
   con.close();%>
   <div><strong> Selected Book's Entry is Deleted from your Cart..</strong></div>
  <% response.sendRedirect("cart.jsp");
   return;
 }
 catch(Exception e){
    e.printStackTrace();
 }
   %>
