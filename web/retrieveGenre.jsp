<%-- 
    Document   : retrieveGenre
    Created on : Jun 29, 2017, 8:06:01 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@include file="connection.jsp" %>
<%    String genre = request.getParameter("catg");
String name="";
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                name = "GUEST";
            }
String urole=session.getAttribute("role")+"";
    if (genre == null || genre.trim().equals("")) {
        out.print(" There was some problem..Please try again!");
    } else {
        try {
            ps = con.prepareStatement("select * from bookdetails where category=?");
            ps.setString(1, genre);
            rs = ps.executeQuery();
           /* if(!rs.next()){
            out.print("<h2>No books found!</h2>");
            }*/
            while (rs.next()) {
                String imgs = rs.getString("bsource");
                String bookname = rs.getString("bname");
                float price = rs.getFloat("price");
                int bid=rs.getInt("bid");
%>
<form action="requesthandle.jsp?bid=<%=bid%>&bname=<%=bookname%>&price=<%=price%>&source=<%=imgs%>&quant=1" method="post">
<div class="col-sm-4">
    <div class="product-image-wrapper">
        <div class="single-products">
            <div class="productinfo text-center">
                <a href="single.jsp?bid=<%=bid%>">  <img src="<%= imgs%>" alt="book" /></a>
                <h2>&#8377; <%= price%></h2>
                <p><%=bookname%></p>
  <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
  <button type="submit"  name="addtocart" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</button>
  <% } else { %>
  <a href="single.jsp?bid=<%=bid%>" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a>
        <% } %>    </div>

        </div>
         <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
        <div class="choose">
            <ul class="nav nav-pills nav-justified">
                <li><button type="submit"  name="addtowish" class="btn btn-default add-to-cart"><i class="fa fa-plus-square"></i>Add to wishlist</button></li>
<li><a href="single.jsp?bid=<%=bid%>" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a></li>                
            </ul>
        </div>
            <% } %>
    </div>
</div>
</form>
<% }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

%>
