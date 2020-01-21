<%-- 
    Document   : categories
    Created on : Jun 15, 2017, 2:27:48 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@include file="connection.jsp" %>
<%@page session="true" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="bootstrap/jquery.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.2/modernizr.js"></script>
        <script>
            // Wait for window load
            $(window).load(function () {
                // Animate loader off screen
                $(".se-pre-con").fadeOut("slow");
                
            });
            $(function () {
                $("#featuredBooks").load("featuredBooks.jsp");
                $("#heading").hide();
            });
        </script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap/bootstrap-theme.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="bootstrap/bootstrap.min.js"></script>

        <title>Bookstore</title>
        <link rel="icon" href="icon.png">
        <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
        <link href="categories.css" rel="stylesheet">
        <%        String name = "";
        String urole=session.getAttribute("role")+"";
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                name = "GUEST";
            } else {
                ps = con.prepareStatement("select * from bookstore.userdetails where email= ?");
                ps.setString(1, session.getAttribute("userid") + "");
                rs = ps.executeQuery();
                if (rs.next()) {
                    name = rs.getString("uname");

                }
            }
        %>

    </head>
    <body id="myPage" >

        <div class="se-pre-con"></div>
        <%! String catg="";String auth=""; %>
        <div class="navbar-wrapper" >
            <nav class="navbar  navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="sr-only">Toggle navigation</span>
                            <i class="fa fa-bars fa-lg tgl"></i>      
                        </button>
                        <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="start.jsp#rec">RECOMMENDED</a></li>

                            <li class="dropdown active">
                                <a href="categories.jsp"  class="dropdown-toggle" data-toggle="dropdown">CATEGORIES<b class="caret"></b></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li ><a href="categories.jsp" >Fantasy</a></li>
                                    <li ><a href="categories.jsp">Drama</a></li>
                                    <li ><a href="categories.jsp">Adventure</a></li>
                                    <li  ><a href="categories.jsp">Thriller</a></li>
                                    <li ><a href="categories.jsp">Romance</a></li>
                                </ul>

                            </li>
                            <li><a href="start.jsp#about"><span class="glyphicon glyphicon-info-sign"></span>ABOUT</a></li>
                            <li><a href="start.jsp#contact"><span class="glyphicon glyphicon-earphone"></span>CONTACT</a></li>

                            <%if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                            %><li ><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span><%=name%></a></li>
                            <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN|SIGNUP</a></li>
                            <% } else {%><li ><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span><%=name%></a></li>
                            <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGOUT</a></li>  
                                <%}%>

                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class=" header-middle" style="background-color: #fff;"><!--header-middle-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-6" style="color:#cc0000;">
                        <div class=" pull-left">
                            <a href="start.jsp"><img src="paperbag-appicon.png" alt="" style="width:55px; height:50px;margin-right:8px;" /></a>
                        </div>
                        <div class="search_box">
                            <form class="navbar-form" role="search" method="post" action="booksearch.jsp">
                                <div class="input-group add-on">
                                    <input class="form-control" placeholder="Search Book by Name" name="srch-term" id="srch-term" type="text">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search" style="color:#cc0000;"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>


                    </div>


                    <div class="col-sm-6">
                        <div class="shop-menu ">
                            <ul class="nav navbar-nav navbar-right">
                                <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %>
                                <li><a href="wishlist.jsp" ><span class="sub-menu"><i class="fa fa-heart"></i>Wishlist</span>
                                    <% int c = 0;
                                            ps = con.prepareStatement("select * from bookstore.wishlist where email=?");
                                            ps.setString(1, session.getAttribute("userid") + "");
                                            rs = ps.executeQuery();
                                       while (rs.next()) {
                                           c++;
                                       }%>
                                        <span class="badge"><%=c%></span> </a></li>
                                <li><a href="checkout.jsp" ><span class="sub-menu"><i class="fa fa-crosshairs"></i>Checkout</span></a></li>
                                <li><a href="cart.jsp"><span class="sub-menu"><i class="fa fa-shopping-cart"></i>Cart</span>
                                 <%  ps = con.prepareStatement("select * from bookstore.cart where email=? and status=?");
                                ps.setString(1, session.getAttribute("userid") + "");
                                ps.setInt(2, 0);
                                rs = ps.executeQuery();
                                int qt = 0;
                                while (rs.next()) {
                                 qt=qt+ rs.getInt("quantity"); 
                                }%>
                                            <span class="badge"><%=qt %></span>
                                </a></li>
                                <li><a href="order.jsp" ><span class="sub-menu"><i class="fa fa-gift" aria-hidden="true"></i>Your Orders</span></a></li>
<% } else { %>
                   <li><a href="admin.jsp" ><span class="sub-menu"><i class="fa fa-tachometer" aria-hidden="true"></i>Admin Dashboard</span></a></li>  
                   <% } %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-middle-->

        <section id="advertisement">
            <div class="container">
                <img src="sale.jpg" alt="offer" />
            </div>
        </section>
        
        <script>
            function showBooks(genre) {
                if (genre === "") {
                    return;
                }
                $("#featuredBooks").remove();
                document.getElementById("heading").innerHTML=genre;
               $("#heading").show();
                try {
                    $.ajax({
                        type: "GET",
                        data: {catg: genre},
                        url: "retrieveGenre.jsp",
                        success: function (response) {
                            
                            $('.resultAjax').html(response);
                        }
                    });
                } catch (e)
                {
                    alert("Unable to connect to server");
                }
            }
            function showAuthors(author) {
                if (author === "") {
                    return;
                }
                $("#featuredBooks").remove();
                  document.getElementById("heading").innerHTML=author;
                 $("#heading").show();
                try {
                    $.ajax({
                        type: "GET",
                        data: {auth: author},
                        url: "retrieveAuthor.jsp",
                        success: function (response) {
                            $('.resultAjax').html(response);
                        }
                    });
                } catch (e)
                {
                    alert("Unable to connect to server");
                }
            }
        </script>    


        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Category</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-products-->
                                 <% ps = con.prepareStatement("select * from catgdetails");
            rs = ps.executeQuery();
            while (rs.next()) {
                
                 catg=rs.getString("category");
            %>

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="#"  class="publ" onclick="showBooks(this.textContent)"><%= catg %></a></h4>
                                    </div>
                                </div>
                                  <%  } %>
                          
                            </div>
                            <div class="brands_products"><!--brands_products-->
                                <h2>Authors</h2>

                                <div class="panel-group category-products" id="accordian"><!--category-products-->
<% ps = con.prepareStatement("select * from authdetails");
            rs = ps.executeQuery();
            while (rs.next()) {
                
                 auth=rs.getString("author");
            %>
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title"><a href="#"  class="publ" onclick="showAuthors(this.textContent)"><%= auth %></a></h4>
                                        </div>
                                    </div>
                                  <% } %>  
                                   
                                </div>

                            </div><!--/brands_products--> 
                            <div class="shipping text-center"><!--shipping-->
                                <img src="colorful-sale-banner.jpg" alt="" />
                            </div><!--/shipping-->

                        </div></div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            
                            <div id="featuredBooks">
                            </div>
                             <h2 class='title text-center' id='heading'></h2>
                            <div class="resultAjax">
                          
                            </div>

                        </div>

                        <ul class="pagination">
                            <li class="active"><a href="">1</a></li>
                            <li><a href="">2</a></li>
                            <li><a href="">3</a></li>
                            <li><a href="">&raquo;</a></li>
                        </ul>
                    </div>
                </div></div>
        </section>
<footer class="container-fluid backg3 text-center">
  <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href="" target="_blank">IET Lucknow</a></p> 
</footer>
        <script>
            $(function () {
                $(".dropdown").hover(
                        function () {
                            $('.dropdown-menu', this).stop(true, true).fadeIn("fast");
                            $(this).toggleClass('open');
                            $('b', this).toggleClass("caret caret-up");
                        },
                        function () {
                            $('.dropdown-menu', this).stop(true, true).fadeOut("fast");
                            $(this).toggleClass('open');
                            $('b', this).toggleClass("caret caret-up");
                        });
            });
        </script>    

    </body></html>