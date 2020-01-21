<%-- 
    Document   : booksearch
    Created on : Jul 28, 2017, 1:33:22 AM
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
<% String sname=request.getParameter("srch-term");
try{
  ps = con.prepareStatement("select * from bookstore.bookdetails where bname=?");
ps.setString(1, sname);
rs=ps.executeQuery();
if(rs.next()){
    int bid=rs.getInt("bid");
%>
<jsp:forward page="single.jsp">
    <jsp:param name="bid" value="<%=bid%>" ></jsp:param>
</jsp:forward>
<%
}
else{%> <div class="jumbotron text-center">
    <h2> Requested Book Not Found!</h2>
</div>
<% }}
catch(Exception e){
out.print("Requested Book is Not Available");
}
%>
