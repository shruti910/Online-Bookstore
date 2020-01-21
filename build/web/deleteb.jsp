<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ include file="connection.jsp" %>
<%@ page session="true"%>
<%
String bid = request.getParameter("bid");
 try{
    
    
  ps = con.prepareStatement("delete from bookstore.bookdetails where bid=?");
    ps.setInt(1, Integer.parseInt(bid));
   ps.executeUpdate();
   con.close();%>
   <div><strong> Selected Book's Entry is Deleted..</strong></div>
  <% response.sendRedirect("Deletebook.jsp");
   return;
 }
 catch(Exception e){
    e.printStackTrace();
 }
   %>