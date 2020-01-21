<%-- 
    Document   : rejectOrder
    Created on : Jul 26, 2017, 4:27:39 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ include file="connection.jsp" %>
<%@ page session="true"%>
<%
String bid = request.getParameter("bid");
String user=request.getParameter("user");
 try{
  ps = con.prepareStatement("update bookstore.cart set status=? where email=? and bid=? and status=?");
ps.setInt(1, 3);
                                ps.setString(2, user);
                                ps.setInt(3, Integer.parseInt(bid));
                                ps.setInt(4, 1);
ps.executeUpdate();
        response.sendRedirect("admin.jsp");

    }
 catch(Exception e){
 out.print(e);
 }
 

%>
