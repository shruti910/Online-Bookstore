<%-- 
    Document   : admin
    Created on : Jun 15, 2017, 1:27:24 AM
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
            //paste this code under head tag or in a seperate js file.
            // Wait for window load
            $(window).load(function () {
                // Animate loader off screen
                $(".se-pre-con").fadeOut("slow");
                ;
            });
        </script>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <script src="bootstrap/bootstrap.min.js"></script>
        <title>Welcome Admin</title>
        <link rel="icon" href="icon.png">
        <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
        <link href="adminstyle.css" rel="stylesheet">
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
            int bno,stat;
            int qty;
            float price;
                 String user;%>


    </head>
    <body id="myPage" class="sticky-header left-side-collapsed">

        <div class="se-pre-con"></div>
        <!----------------------------------------------side navigation--------------------------------------------->       
        <section>
            <!-- left side start-->
            <div id="mySidenav" class="sidenav">
                <a href="admin.jsp"> Back to Admin Page </a>
                <a href="editCatg.jsp">Add/Delete Category</a>
                <a href="editProduct.jsp">Add Product</a>
                <a href="Deletebook.jsp">Delete Product</a>
                <a href="editBook.jsp">Edit Product Details</a>
                <a href="editAuthor.jsp">Add/Delete Authors</a>
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><i class="fa fa-times" aria-hidden="true"></i></a>
            </div>
            <!-- left side end-->      
        </section>


        <div class="navbar-wrapper" >
            <nav class="navbar  navbar-fixed-top" role="navigation">
                <div class="container">

                    <div class="navbar-header">
                        <!--toggle button start-->
                        <a class="toggle-btn pull-right" onclick="openNav()" data-toggle="tooltip" title="Options" data-placement=" auto bottom"><i class="fa fa-list tgl" aria-hidden="true"></i></a>
                        <!--toggle button end-->
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" >
                            <!-- <span class="sr-only">Toggle navigation</span>-->
                            <i class="fa fa-bars fa-lg tgl" aria-hidden="true" ></i>                     
                        </button>

                        <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">

                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="start.jsp#rec">RECOMMENDED</a></li>

                            <li class="dropdown">
                                <a href=""  class="dropdown-toggle" data-toggle="dropdown">CATEGORIES<b class="caret"></b></a>
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
                            %><li  ><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span><%=name%></a></li>
                            <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN|SIGNUP</a></li>
                            <% } else {%><li ><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span><%=name%></a></li>
                            <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGOUT</a></li>  
                                <%}%>

                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <!------------------------------------------------------------------------------------------------------------------->
        <div class="jumbotron text-center">
            <h2 style="color:white;">Welcome Admin <%=name%>.</h2>
        </div>
        <section id="main">
            <section id="cart_items">
                <div class="container">
                    <div >
                        <h2>Orders To Review</h2>
                    </div>
                    <div class="table-responsive cart_info">
                        <%  ps = con.prepareStatement("select * from bookstore.cart where status=?");

                            ps.setInt(1, 1);
                              rs = ps.executeQuery();
                              if (!rs.next()) { %>
                              <h3 class="center-block text-center">No items to review..</h3>
                        <% } else { %>

                        <table class="table table-condensed">
                            <thead>
                                <tr class="cart_menu">
                                    <td>#</td>
                                    <td class="description">User</td>
                                    <td class="image">Item</td>
                                    <td class="description">Description</td>
                                    <td class="price">Price</td>
                                    <td class="quantity">Quantity</td>
                                    <td class="total">Total</td>
                                    <td>Approve/Reject</td>
                                   
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ps = con.prepareStatement("select * from bookstore.cart where status=?");

                                    ps.setInt(1, 1);
                                    rs = ps.executeQuery();
                                    int i = 0;
                                    while (rs.next()) {
                                        i++;
                                        user = rs.getString("email");
                                        bsource = rs.getString("bsource");
                                        bname = rs.getString("bname");
                                        bno = rs.getInt("bid");
                                        price = rs.getFloat("price");
                                        qty = rs.getInt("quantity");
                                %>

                                <tr>
                                    <td ><%=i%></td>
                                    <td class="cart_description"><%=user%></td>
                                    <td class="cart_product"><a href="single.jsp?bid=<%=bno%>"><img src="<%=bsource%>" class="image-responsive" style='height:100px; width:auto;' alt=""></a></td>
                                    <td class="cart_description"><h4><a href="single.jsp?bid=<%=bno%>"><%=bname%></a></h4></td> 
                                    <td class="cart_price"><p>&#8377; &nbsp;<%=price%></p></td>
                                    <td class="cart_price"><p><%=qty%></p></td>
                                    <td class="cart_price"><p>&#8377; &nbsp;<%=(price * qty)%></p></td>
                                    <td class="cart_delete">
                                        <button  type="submit"  class="btn btn-default check_out">
                                            <a href="approveOrder.jsp?user=<%=user%>&bid=<%=bno%>">&#10004;</a>
                                        </button>
                                    
                                        <button  type="submit"  class="btn btn-default check_out">
                                            <a href="rejectOrder.jsp?user=<%=user%>&bid=<%=bno%>">&#10008;</a>
                                        </button>
                                    </td>
                                </tr>
                                <%}
                                    }
                                %></tbody></table>
                    </div>
                </div>
            </section>
                    
                    <section id="cart_items">
                <div class="container">
                    <div >
                        <h2>Reviewed Orders History</h2>
                    </div>
                    <div class="table-responsive cart_info">
                        <%  ps = con.prepareStatement("select * from bookstore.cart where status=? or status=?");

                            ps.setInt(1, 2);
                            ps.setInt(2, 3);
                              rs = ps.executeQuery();
                              if (!rs.next()) { %>
                              <h3 class="center-block text-center">No items to show..</h3>
                        <% } else { %>

                        <table class="table table-condensed">
                            <thead>
                                <tr class="cart_menu">
                                    <td>#</td>
                                    <td class="description">User</td>
                                    <td class="image">Item</td>
                                    <td class="description">Description</td>
                                    <td class="price">Price</td>
                                    <td class="quantity">Quantity</td>
                                    <td class="total">Total</td>
                                    <td >Status</td>
                                    
                                   
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    ps = con.prepareStatement("select * from bookstore.cart where status=? or status=?");

                                    ps.setInt(1, 2);
                                    ps.setInt(2, 3);
                                    rs = ps.executeQuery();
                                    int i = 0;
                                    while (rs.next()) {
                                        i++;
                                        user = rs.getString("email");
                                        bsource = rs.getString("bsource");
                                        bname = rs.getString("bname");
                                        bno = rs.getInt("bid");
                                        price = rs.getFloat("price");
                                        qty = rs.getInt("quantity");
                                        stat=rs.getInt("status");
                                %>

                                <tr>
                                    <td ><%=i%></td>
                                    <td class="cart_description"><%=user%></td>
                                    <td class="cart_product"><a href="single.jsp?bid=<%=bno%>"><img src="<%=bsource%>" class="image-responsive" style='height:100px; width:auto;' alt=""></a></td>
                                    <td class="cart_description"><h4><a href="single.jsp?bid=<%=bno%>"><%=bname%></a></h4></td> 
                                    <td class="cart_price"><p>&#8377; &nbsp;<%=price%></p></td>
                                    <td class="cart_price"><p><%=qty%></p></td>
                                    <td class="cart_price"><p>&#8377; &nbsp;<%=(price * qty)%></p></td>
                                    <% if(stat==2) { %>
                                    <td class="cart_delete" >&#10004;
                                    </td><% } else if(stat==3){ %>
                                    <td class="cart_delete">&#10008;</td>
                                    <% } %>
                                </tr>
                                <% }
                                    }
                                %></tbody></table>
                    </div>
                </div>
            </section>
            <footer class="container-fluid backg3 text-center">
                <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href="" target="_blank">IET Lucknow</a></p> 
            </footer>
        </section>
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
                        
                        openNav();
            });
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });

            /* Set the width of the side navigation to 250px and the left margin of the page content to 250px */
            function openNav() {
                document.getElementById("mySidenav").style.width = "250px";
                document.getElementById("main").style.marginLeft = "250px";
            }

            /* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
            function closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("main").style.marginLeft = "0";
            }
        </script>    

    </body>
</html>