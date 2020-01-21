<%-- 
    Document   : featuredBooks
    Created on : Aug 2, 2017, 12:51:33 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@include file="connection.jsp" %>

<%    String auth = request.getParameter("auth"); String name="";
String urole=session.getAttribute("role")+"";
 if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                name = "GUEST";
            }
   
%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<h2 class="title text-center">Featured Books</h2>
<form action="requesthandle.jsp?quant=1&status=0" method="post">
<div class="col-sm-4">
    <div class="product-image-wrapper">
        <div class="single-products">
            <div class="productinfo text-center">
                <a href="single.jsp?bid=2">  <img src="allthelight.jpg" alt="" /></a>
                <h2>&#8377;696.61</h2>
                <p>All the Light We Cannot See </p>
                <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
                <button type="submit" class="btn btn-default add-to-cart" name="btn1"><i class="fa fa-shopping-cart"></i>Add to cart</button>
            <% } else { %>
  <a href="single.jsp?bid=2" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a>
        <% } %> </div>

        </div>
          <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
        <div class="choose">
            <ul class="nav nav-pills nav-justified">
                <li><button type="submit" class="btn btn-default add-to-cart" name="bt1"><i class="fa fa-plus-square"></i>Add to wishlist</button></li>
 <li><a href="single.jsp?bid=2" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a></li>               
            </ul>
        </div>
         <% } %>
    </div>
</div>
<div class="col-sm-4">
    <div class="product-image-wrapper">
        <div class="single-products">
            <div class="productinfo text-center">
                <a href="single.jsp?bid=6">  <img src="got.jpg" alt="" /></a>
                <h2>&#8377;511.32</h2>
                <p>A Game of Thrones</p>
                 <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
                 <button type="submit" class="btn btn-default add-to-cart" name="btn2"><i class="fa fa-shopping-cart"></i>Add to cart</button>
           <% } else { %>
  <a href="single.jsp?bid=6" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a>
        <% } %>   </div>

        </div>
         <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
        <div class="choose">
            <ul class="nav nav-pills nav-justified">
<li><button type="submit" class="btn btn-default add-to-cart" name="bt2"><i class="fa fa-plus-square"></i>Add to wishlist</button></li>
<li><a href="single.jsp?bid=6" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a></li>                
            </ul>
        </div>
         <% } %>
    </div>
</div>
<div class="col-sm-4">
    <div class="product-image-wrapper">
        <div class="single-products">
            <div class="productinfo text-center">
                <a href="single.jsp?bid=4">  <img src="fault-in-our-stars.jpg" alt="" /></a>
                <h2>&#8377;774.3</h2>
                <p>The Fault in our Stars</p>
                 <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
                <button type="submit" class="btn btn-default add-to-cart" name="btn3"><i class="fa fa-shopping-cart"></i>Add to cart</button>
           <% } else { %>
  <a href="single.jsp?bid=4" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a>
        <% } %>  </div>

        </div>
          <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
        <div class="choose">
            <ul class="nav nav-pills nav-justified">
                <li> <button type="submit" class="btn btn-default add-to-cart" name="bt3"><i class="fa fa-plus-square"></i>Add to wishlist</button></li>
<li><a href="single.jsp?bid=4" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a></li>                
            </ul>
        </div>
         <% } %>
    </div>
</div>
<div class="col-sm-4">
    <div class="product-image-wrapper">
        <div class="single-products">
            <div class="productinfo text-center">
                <a href="single.jsp?bid=5">  <img src="lord.jpg" alt="" /></a>
                <h2>&#8377;1328.92</h2>
                <p>The Lord of the Rings</p>
                 <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
                <button type="submit" class="btn btn-default add-to-cart" name="btn4"><i class="fa fa-shopping-cart"></i>Add to cart</button>
            <% } else { %>
  <a href="single.jsp?bid=5" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a>
        <% } %> </div>

        </div>
         <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
        <div class="choose">
            <ul class="nav nav-pills nav-justified">
                <li><button type="submit" class="btn btn-default add-to-cart" name="bt4"><i class="fa fa-plus-square"></i>Add to wishlist</button></li>
                <li><a href="single.jsp?bid=5" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a></li>
            </ul> 
        </div>
         <% } %>
    </div>
</div>
<div class="col-sm-4">
    <div class="product-image-wrapper">
        <div class="single-products">
            <div class="productinfo text-center">
                <a href="single.jsp?bid=3">   <img src="mockingbird.jpg" alt="" /></a>
                <h2>&#8377;503.68</h2>
                <p>To Kill a Mockingbird</p>
                 <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
                <button type="submit" class="btn btn-default add-to-cart" name="btn5"><i class="fa fa-shopping-cart"></i>Add to cart</button>
              <% } else { %>
  <a href="single.jsp?bid=3" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a>
        <% } %> </div>

        </div>
        <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
        <div class="choose">
            <ul class="nav nav-pills nav-justified">
                <li><button type="submit" class="btn btn-default add-to-cart" name="bt5"><i class="fa fa-plus-square"></i>Add to wishlist</button></li>
 <li><a href="single.jsp?bid=3" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a></li>               
            </ul>
        </div>
            <% } %>
    </div>
</div>
<div class="col-sm-4">
    <div class="product-image-wrapper">
        <div class="single-products">
            <div class="productinfo text-center">
                <a href="single.jsp?bid=1"> <img src="life-of-pi.jpg" alt="" /></a>
                <h2>&#8377;624.66</h2>
                <p>Life of Pi</p>
                 <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %>
                <button type="submit" class="btn btn-default add-to-cart" name="btn6"><i class="fa fa-shopping-cart"></i>Add to cart</button>
           <% } else { %>
  <a href="single.jsp?bid=1" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a>
        <% } %>  </div>

        </div>
         <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %> 
        <div class="choose">
            <ul class="nav nav-pills nav-justified">
                <li><button type="submit" class="btn btn-default add-to-cart" name="bt6"><i class="fa fa-plus-square"></i>Add to wishlist</button></li>
 <li><a href="single.jsp?bid=1" target="_blank"><button type="button" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>View Book</button></a></li>               
            </ul>
        </div>
        <% } %>
    </div>
</div>
</form>
