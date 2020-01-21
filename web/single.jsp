<%-- 
    Document   : single
    Created on : Jun 17, 2017, 7:24:21 PM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");;
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
    <% 
String name=""; String urole=session.getAttribute("role")+"";
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == ""))
    { name="GUEST";
    }

 else {
ps = con.prepareStatement("select * from bookstore.userdetails where email= ?");
  ps.setString(1,session.getAttribute("userid")+"");
rs=ps.executeQuery();
if(rs.next()){
name=rs.getString("uname");

}
}
%>
   
  </head>
  <body id="myPage" >
   
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
        
        <%if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")){
        %><li ><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span><%=name%></a></li>
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN|SIGNUP</a></li>
        <% }
else{%><li ><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span><%=name%></a></li>
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
                   <!-- <li><a href="cart.jsp"><span class="sub-menu"><i class="fa fa-shopping-cart"></i>Cart</span></a></li>-->
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
               
                <div class="main" style="margin-top: 40px;">
    <% try{ 
       int bid=Integer.parseInt(request.getParameter("bid"));
    
                ps = con.prepareStatement("select * from bookstore.bookdetails where bid=?");
  ps.setInt(1, bid);
rs=ps.executeQuery();
if(rs.next()) {
String bookname=rs.getString("bname");    
String imgs =rs.getString("bsource"); 
String author=rs.getString("bauthor");
String isbn=rs.getString("isbn");
String publ=rs.getString("publisher");
String pubdate=rs.getString("pubdate");
String edn=rs.getString("edition");
int pages=rs.getInt("pages");
int sales=rs.getInt("sales");
String dmn=rs.getString("dimension");
String description=rs.getString("description");
float price=rs.getFloat("price");
       
%>
  <form action='requesthandle.jsp?bid=<%=bid%>&bname=<%=bookname%>&price=<%=price%>&source=<%=imgs%>' method="post">
		<div class="container">
			<div class="row">
                           
				<div class="col-md-9 padding-left">
				   <div class="product-details">
                                       <div class="col-sm-5">
                                           <div class="view_product">
					   <img src="<%=imgs%>" alt=" image" />
                                           <h3>New!</h3>
                                       </div>
				      

						</div>
				        <div class="col-sm-7 text-center ">
                                            <h2 class="book-title text-capitalize"><%=bookname%></h2>
       <div class="product-info desc">                                       
                                             
      <h4> Product Details: </h4>
       <div class="well">
          
              <div class="row">  <p class="criteria pull-left col-sm-6">Author:</p><p class="  text-center col-sm-6"><%=author%> </p></div>
              <div class="row">  <p class="criteria pull-left col-sm-6">ISBN-13:</p><p class="  text-center col-sm-6"><%=isbn%></p></div>
               <div class="row"> <p class="criteria pull-left col-sm-6">Publisher:</p><p class="  text-center col-sm-6"><%=publ%></p></div>
               <div class="row"> <p class="criteria pull-left col-sm-6">Publication date:</p><p class="  text-center col-sm-6"><%=pubdate%></p></div>
              <div class="row">  <p class="criteria pull-left col-sm-6">Edition description:</p><p class="  text-center col-sm-6"><%=edn%></p></div>
            <div class="row"><p class="criteria pull-left col-sm-6">Pages:</p><p class="  text-center col-sm-6"><%=pages%></p></div>
           <div class="row"> <p class="criteria pull-left col-sm-6">Sales rank:</p><p class=" text-center col-sm-6"><%=sales%></p></div>
          <div class="row">  <p class="criteria pull-left col-sm-6">Product dimensions:</p><p class=" text-center col-sm-6"><%=dmn%></p></div>
	
  </div>				        	
          <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %>  
							<div><button type="submit" name="addtowish" id="add-to-wish" class="social-link">
                       <i class="glyphicon glyphicon-heart"></i>Add to wishlist
                                                        </button></div> <% } %>
							<div class="social_buttons">
								
								<button type="button" class="social-link" id="tweet" onclick="">
                                                                    <i class="fa fa-twitter-square"></i><a href="https://twitter.com/login" target="_blank"> Tweet</a>
					            </button>
					           
					             <button type="button" class="social-link" id="gplus" onclick="">
                                                         <i class="fa fa-google-plus-square"></i><a href="https://plus.google.com" target="_blank"> Google+</a>
					            </button>
                                                             <button type="button" class="social-link" id="fb"  onclick="">
                                                                 <i class="fa fa-facebook-square"></i><a href="https://www.facebook.com/" target="_blank"> Share</a>
					            </button>
					            <button type="button" class="social-link" id="pin" onclick="">
                                                        <i class="fa fa-pinterest-square"></i> <a href="https://in.pinterest.com/" target="_blank">Pinterest</a>
					            </button>
					        </div>
				        </div>
                                        </div>
                                   </div>     
				</div>
          
         
                            <div class="col-md-3">
				  <div class="box-info-product">
					<p class="price2">&#8377;<%=price%></p>
                                        <% if(urole.equalsIgnoreCase("user")||name.equalsIgnoreCase("guest")){ %>
					       <div class="qty">
								Quantity:
								<select name="quant">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
                                                                        <option value="5">5</option>
                                                                        <option value="6">6</option>
									
								</select>
							</div>
							<button type="submit" name="addtocart" class="exclusive">
							   <span>Add to cart</span>
							</button>
                                               <% } %>
				   </div>
			   </div>
                        
			</div>	
                    <div class="desc row" >
			   	<h4 class="text-center">Description</h4>
                                <p>
          <%=description%>
                                </p>
			</div>
                              <%   } }
catch(Exception e){
out.println("cannot find the book! Please try later !");
}%>

                    <div class=" desc row" >
                        <h4 class="text-center">BOOKS YOU MAY LIKE</h4>
                     <div id="similar-product" class="carousel slide" data-ride="carousel" data-interval="4000">
								
								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">
										<div class="item active">
										  <a href="single.jsp?bid=5"><img src="lord.jpg" alt="" class="img-responsive" ></a>
										  <a href="single.jsp?bid=21"><img src="lost_symbol.jpg" alt="" class="img-responsive"></a>
										  <a href="single.jsp?bid=3"><img src="mockingbird.jpg" alt="" class="img-responsive" ></a>
										</div>
										<div class="item">
										  <a href="single.jsp?bid=8"><img src="the-girl-on-the-train.jpg" alt="" class="img-responsive"></a>
										  <a href="single.jsp?bid=4"><img src="fault-in-our-stars.jpg" alt="" class="img-responsive" ></a>
										  <a href="single.jsp?bid=6"><img src="got.jpg" alt="" class="img-responsive" ></a>
										</div>
										<div class="item">
                                                                                  <a href="single.jsp?bid=7"><img src="suns.jpg" alt="" class="img-responsive" ></a>
										  <a href="single.jsp?bid=25"><img src="alchemist.jpg" alt="" class="img-responsive" ></a>
                                                                                  <a href="single.jsp?bid=2"><img src="allthelight.jpg" alt="" class="img-responsive" ></a>
										</div>
										
									</div>
                                                                  
								  <!-- Controls -->
								  <a class="left carousel-control item-control" href="#similar-product" data-slide="prev" role="button">
									<i class="fa fa-angle-left"></i>
								  </a>
								  <a class="right carousel-control item-control" href="#similar-product" data-slide="next" role="button">
									<i class="fa fa-angle-right"></i>
								  </a>
                     </div></div>
                  
	     </div>
  </form>
                    <footer class="container-fluid backg3 text-center">
  <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href="" target="_blank">IET Lucknow</a></p> 
</footer>
	   
	  </div>
                
<script>
        $(function(){
    $(".dropdown").hover(            
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeIn("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            },
            function() {
                $('.dropdown-menu', this).stop( true, true ).fadeOut("fast");
                $(this).toggleClass('open');
                $('b', this).toggleClass("caret caret-up");                
            });
    });
    </script>    
  </body></html>