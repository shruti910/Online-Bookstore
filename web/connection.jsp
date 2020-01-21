<%-- 
    Document   : connection
    Created on : Jun 10, 2017, 4:01:36 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore",
            "root", "root");
    PreparedStatement ps;
    ResultSet rs;
    Statement stmt;
%>
