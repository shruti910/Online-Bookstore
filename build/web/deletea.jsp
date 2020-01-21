<%-- 
    Document   : deletea
    Created on : Jul 11, 2017, 2:13:02 PM
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
    
    
  ps = con.prepareStatement("delete from authdetails where aid=?");
    ps.setInt(1, Integer.parseInt(bid));
   ps.executeUpdate();
   con.close();
   response.sendRedirect("editAuthor.jsp");
   return;
 }
 catch(Exception e){
    e.printStackTrace();
 }
   %>