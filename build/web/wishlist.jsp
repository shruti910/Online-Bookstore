<%-- 
    Document   : wishlist
    Created on : Jul 23, 2017, 2:12:37 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<%@ page import ="java.sql.*" %>
<%@include file="connection.jsp" %>

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
                ;
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

        <title>Wish List</title>
        
        <link rel="icon" href="icon.png">
        <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
        <link href="categories.css" rel="stylesheet">
        <link href="cartstyle.css" rel="stylesheet">
        <%        String name = "";
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                name = "GUEST";
                response.sendRedirect("login.jsp");
            } else {
                ps = con.prepareStatement("select * from bookstore.userdetails where email= ?");
                ps.setString(1, session.getAttribute("userid") + "");
                rs = ps.executeQuery();
                if (rs.next()) {
                    name = rs.getString("uname");

                }
            }
        %>
        <%! String bname = "";
             String bsource = "";
             int bno;
             float price;%>
    </head>
    <body id="myPage">
        <div class="se-pre-con"></div>

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

                            <li class="dropdown">
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

                                <li><a href="wishlist.jsp" ><span class="sub-menu"><i class="fa fa-heart"></i>Wishlist</span>
                                        <% int c = 0;
                                            ps = con.prepareStatement("select * from bookstore.wishlist where email=?");
                                            ps.setString(1, session.getAttribute("userid") + "");
                                            rs = ps.executeQuery();
                                       while (rs.next()) {
                                           c++;
                                       }%>
                                        <span class="badge"><%=c%></span> 
                                    </a></li>
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
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--/header-middle-->
        <section id="cart_items">
            <div class="container">
                <div class="breadcrumbs">
                    <ol class="breadcrumb">
                        <li><a href="categories.jsp">Home</a></li>
                        <li class="active">Wish List</li>
                    </ol>
                </div>
                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td>#</td>
                                <td class="image">Item</td>
                                <td class="description">Description</td>
                                <td class="price">Price</td>

                                <td>Action</td>
                            </tr>
                        </thead>
                        <tbody>
                            <% ps = con.prepareStatement("select * from bookstore.wishlist where email=?");
                                ps.setString(1, session.getAttribute("userid") + "");
                                rs = ps.executeQuery();
                                int i = 0;
                                while (rs.next()) {
                                    i++;

                                    bsource = rs.getString("bsource");
                                    bname = rs.getString("bname");
                                    bno = rs.getInt("bid");
                                    price = rs.getFloat("price");
                            %>
                            <tr>
                                <td ><%=i%></td>

                                <td class="cart_product"><a href="single.jsp?bid=<%=bno%>"><img src="<%=bsource%>" class="image-responsive" style='height:100px; width:auto;' alt=""></a></td>
                                <td class="cart_description"><h4><a href="single.jsp?bid=<%=bno%>"><%=bname%></a></h4></td> 
                                <td class="cart_price"><p>&#8377; &nbsp;<%=price%></p></td>

                                <td class="cart_delete"><button  type="submit"  class="btn btn-default check_out">
                                    <a href="deletewishlist.jsp?bid=<%=bno%>">Remove</a>
                                    </button>
                                </td>
                            </tr>

                            <%  }%>
                        </tbody></table>
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

    </body>
</html>
