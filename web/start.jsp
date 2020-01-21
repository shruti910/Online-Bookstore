<%-- 
    Document   : start
    Created on : Jun 9, 2017, 2:08:48 PM
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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="bootstrap/jquery.min.js"></script>
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
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="bootstrap/bootstrap.min.js"></script>
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
        <title>Bookstore</title>
        <link rel="icon" href="icon.png">
        <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
        <%        String name = "";
        String urole=session.getAttribute("role")+""; //to convert into string
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
    <body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
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
                            <li class="active"><a href="#rec">RECOMMENDED</a></li>

                            <li class="dropdown">
                                <a href="#catg"  class="dropdown-toggle" data-toggle="dropdown">CATEGORIES<b class="caret"></b></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li ><a href="categories.jsp" >Fantasy</a></li>
                                    <li ><a href="categories.jsp">Drama</a></li>
                                    <li><a href="categories.jsp">Adventure</a></li>
                                    <li ><a href="categories.jsp">Thriller</a></li>
                                    <li><a href="categories.jsp">Romance</a></li>
                                </ul>

                            </li>
                            <li><a href="#about"><span class="glyphicon glyphicon-info-sign"></span>ABOUT</a></li>
                            <li><a href="#contact"><span class="glyphicon glyphicon-earphone"></span>CONTACT</a></li>
                            <% if(urole.equalsIgnoreCase("user")){ %>
                            <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>CART</a></li><% }
                                if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                                %> <li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span><%=name%></a></li>
                            <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN|SIGNUP</a></li>
                            <% } else {%> <li><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span><%=name%></a></li>
                            <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGOUT</a></li>  
                                <%}%>


                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <div class="jumbotron text-center">
            <h1>Book Store</h1> 
            <p>The Ultimate Universe of your Favourite Books and Novels.</p> 

        </div>

        <div id="rec" class="bg-grey">

            <div id="myCarousel" class="carousel slide " data-ride="carousel" data-interval="4000">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="1" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="2" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="3" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="4" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="5" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="6" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="7" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="8" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="9" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="10" id="ind"></li>
                    <li data-target="#myCarousel" data-slide-to="11" id="ind"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="HomePage_Billboard_6_06_A4.jpg" alt="slide" class="img-responsive">

                    </div>
                    <div class="item ">
                        <img src="HomePage_Billboard_6-06_A2.jpg" alt="slide" class="img-responsive">

                    </div>
                    <div class="item ">
                        <img src="and_then_there_were_none_xlg.jpg" alt="slide" class="img-responsive">

                    </div>
                    <div class="item">
                        <img src="the-fault-in-our-stars-tc.png" alt="slide" class="img-responsive">
                    </div>
                    <div class="item">
                        <img src="HomePage_Billboard_06-06_A1.jpg" alt="slide" class="img-responsive">
                    </div>
                    <div class="item">
                        <img src="All Covers Large.jpg" alt="slide" class="img-responsive">
                    </div>
                    <div class="item">
                        <img src="HomePage_Billboard_06-20_A1.jpg" alt="slide" class="img-responsive">
                    </div>
                    <div class="item">
                        <img src="HomePage_Billboard_06-20_A2.jpg" alt="slide" class="img-responsive">
                    </div>
                    <div class="item">
                        <img src="harry-potter-olly-moss-covers_2466.0.jpg" alt="slide" class="img-responsive">
                    </div>
                    <div class="item">
                        <img src="harry-potter-and-the-cursed-child.jpeg" alt="slide" class="img-responsive">
                    </div>
                    <div class="item">
                        <img src="HomePage_Billboard_06-20_A3.jpg" alt=" slide" class="img-responsive">
                    </div>
                    <div class="item">
                        <img src="HomePage_Billboard_6-28_A3.jpg" alt="slide" class="img-responsive">
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>

        <!-- Container (Category Section) -->
        <div id="catg" class="container-fluid bg-grey">
            <div class="row">
                <h2 class="text-center">Shop By Category</h2><br>
                <div class="row catgrow">
                    <div class="col-sm-3">
                        <a href='categories.jsp'> <button type="button" class="btn btn-lg btn-danger btn-block text-uppercase slideanim catgbtn">Fiction</button></a>
                    </div>
                    <div class="col-sm-3">

                        <a href='categories.jsp'><button type="button" class="btn btn-lg btn-danger btn-block  text-uppercase slideanim catgbtn">Adventure</button></a>
                    </div>
                    <div class="col-sm-3">

                        <a href='categories.jsp'><button type="button" class="btn btn-lg btn-danger btn-block  text-uppercase slideanim catgbtn">Horror</button></a>
                    </div>
                    <div class="col-sm-3">

                        <a href='categories.jsp'><button type="button" class="btn btn-lg btn-danger btn-block  text-uppercase slideanim catgbtn">fantasy</button></a>
                    </div>
                </div>
                <div class="row catgrow">
                    <div class="col-sm-3">
                        <a href='categories.jsp'><button type="button" class="btn btn-lg btn-danger btn-block text-uppercase slideanim catgbtn">thriller</button></a>
                    </div>

                    <div class="col-sm-3">
                        <a href='categories.jsp'><button type="button" class="btn btn-lg btn-danger btn-block  text-uppercase slideanim catgbtn">satire</button></a>
                    </div>
                    <div class="col-sm-3">
                        <a href='categories.jsp'><button type="button" class="btn btn-lg btn-danger btn-block  text-uppercase slideanim catgbtn">literature</button></a>
                    </div>
                    <div class="col-sm-3">
                        <a href='categories.jsp'><button type="button" class="btn btn-lg btn-danger btn-block  text-uppercase slideanim catgbtn">romance</button></a>
                    </div>
                </div>

            </div>
        </div>

        <!-- Container (About Section) -->
        <div id="about" class="container-fluid">
            <div class="row">
                <div class="col-sm-8">
                    <h2>About Us</h2><br>
                    <h4>Bookstore is the ideal destination for anyone looking for the best in books,novels, and ebooks. With age-based recommendations, it's the ultimate one-stop shop for all the Bookholics.</h4><br>

                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-book logo slideanim"></span>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-grain logo slideanim"></span>
                </div>
                <div class="col-sm-8">
                    <h2>Our Values</h2><br>
                    <h4><strong>Customer Focus</strong> </h4>
                    <p>We are driven to provide customers with a highly-valued experience, and one that allows them to align their actions with their values. We want to be their favorite marketplace and their favorite partner, so we incorporate their input into everything we do.</p><br>
                    <h4><strong>Passion for Literacy</strong></h4>
                    <p> We are committed to the cause of literacy. Every person should have the chance to achieve their potential and participate fully in society.</p>

                    <h4><strong>Foster Innovation</strong></h4>
                    <p>We look for new ideas and bold moves while we embrace and create change.</p>
                </div>
            </div>
        </div>

        <!-- Container (Contact Section) -->
        <hr/>
        <div id="contact" class="container-fluid bg-grey">
            <h2 class="text-center">CONTACT US</h2>
            <div class="row">
                <div class="col-sm-5">
                    <div class="row">
                        <img src="map.png" alt="" />
                        <p><span class="glyphicon glyphicon-map-marker"></span> Lucknow, India</p>
                        <p><span class="glyphicon glyphicon-phone"></span> +00 1515151515</p>
                        <p><span class="glyphicon glyphicon-envelope"></span> myemail@something.com</p>
                    </div>

                </div>
                <div class="col-sm-7 slideanim">
                    <div class="row">
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                        </div>
                        <div class="col-sm-6 form-group">
                            <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                        </div>
                    </div>
                    <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
                    <div class="row">
                        <div class="col-sm-12 form-group">
                            <button class="btn btn-default pull-right" type="submit">Send &nbsp;<span style="color:#cc0000;" class="glyphicon glyphicon-send"></span> </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <footer class="container-fluid text-center">
            <a href="#myPage" title="To Top">
                <span class="glyphicon glyphicon-chevron-up logo"></span>
            </a>
            <div class="row">

                <h4 class="text-center text-muted">Social Networking</h4>
                <div class="col-sm-3">
                    <span id="ico"><a href="https://www.facebook.com/" target="_blank"><i class="fa fa-facebook"></i></a></span></div>
                <div class="col-sm-3">  
                    <span id="ico"><a href="https://twitter.com/login" target="_blank"><i class="fa fa-twitter"></i></a></span></div>
                <div class="col-sm-3">
                    <span id="ico"><a href="https://plus.google.com" target="_blank"><i class="fa fa-google-plus"></i></a></span></div>
                <div class="col-sm-3">
                    <span id="ico"><a href="https://www.youtube.com/?gl=IN" target="_blank"><i class="fa fa-youtube"></i></a></span></div>

            </div>
            <div class=" text-muted text-center">  
                <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href="" target="_blank">IET Lucknow</a> </p>
            </div>
        </footer>

        <script>
            $(document).ready(function () {
                // Add smooth scrolling to all links in navbar + footer link
                $(".navbar a, footer a[href='#myPage']").on('click', function (event) {
                    // Make sure this.hash has a value before overriding default behavior
                    if (this.hash !== "") {
                        // Prevent default anchor click behavior
                        event.preventDefault();

                        // Store hash
                        var hash = this.hash;

                        // Using jQuery's animate() method to add smooth page scroll
                        // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                        //$(selector).animate({params},speed,callback);
                        $('html, body').animate({
                            scrollTop: $(hash).offset().top
                        }, 900, function () {

                            // Add hash (#) to URL when done scrolling (default click behavior)
                            window.location.hash = hash;
                        });
                    } // End if
                });

                $(window).scroll(function () {
                    $(".slideanim").each(function () {
                        var pos = $(this).offset().top;

                        var winTop = $(window).scrollTop();
                        if (pos < winTop + 600) {
                            $(this).addClass("slide");
                        }
                    });
                });
            });
        </script>
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


