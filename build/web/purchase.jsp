<%-- 
    Document   : purchase
    Created on : Jul 26, 2017, 2:12:31 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@ page import ="java.sql.*" %>
<%@include file="connection.jsp" %>

<% int st=Integer.parseInt(request.getParameter("stat"));

    if ( request.getParameter("buy") != null) {
        ps = con.prepareStatement("update bookstore.cart set status=? where email=? and status=?");
ps.setInt(1, st);
                                ps.setString(2, session.getAttribute("userid") + "");
                                ps.setInt(3, 0);
ps.executeUpdate();
        response.sendRedirect("success.jsp");

    }
%>