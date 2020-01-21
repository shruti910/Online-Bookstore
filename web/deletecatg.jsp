<%-- 
    Document   : deletecatg
    Created on : Jul 9, 2017, 4:30:19 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ include file="connection.jsp" %>
<%@ page session="true"%>
<%
String cid = request.getParameter("cid");
 try{
    
    
  ps = con.prepareStatement("delete from bookstore.catgdetails where cid=?");
    ps.setInt(1, Integer.parseInt(cid));
   ps.executeUpdate();
   con.close();
 
   response.sendRedirect("editCatg.jsp");
   return;
 }
 catch(Exception e){
    e.printStackTrace();
 }
   %>
