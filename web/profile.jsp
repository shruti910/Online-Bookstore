<%-- 
    Document   : profile
    Created on : Jul 18, 2017, 12:03:01 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@page session="true" %>
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
	$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");
	});
</script>

  <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/bootstrap-theme.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="bootstrap/bootstrap.min.js"></script>
  <title>Profile</title>
  <link rel="icon" href="icon.png">
  <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
   <link href="style.css" rel="stylesheet">
   <link href="categories.css" rel="stylesheet">
   <style>
       .margin {margin-bottom: 45px;}
  .backg1 { 
      background-color: #cc0000; 
      color: #ffffff;
  }
  .backg3 { 
      background-color: white;
      color: black;
  }
  .backg2 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  #cancelbtn{ background: #bfbfbf; color:black;}
   </style>
   
 </head>
  <%        String name = "", contact="",dob="",city="" ,address="",role="";
  String urole=session.getAttribute("role")+"";
            if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                name = "GUEST";
                response.sendRedirect("login.jsp");
            } else {
                ps = con.prepareStatement("select * from bookstore.userdetails where email= ?");
                ps.setString(1, session.getAttribute("userid") + "");
                rs = ps.executeQuery();
                if (rs.next()) {
                    name = rs.getString("uname");
                   contact = rs.getString("contact");
                    dob = rs.getString("dob");
                    city = rs.getString("city");
                     address = rs.getString("address");
                      role = rs.getString("role");

                }
            }
        %>
<body id="myPage" >
    <div class="se-pre-con"></div>
<div class="navbar-wrapper" >
                <nav class="navbar  navbar-fixed-top" role="navigation">
                    <div class="container">

                        <div class="navbar-header">
                           
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
                                <% if(urole.equalsIgnoreCase("user")){ %>
                                <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>CART</a></li>
                                <% } %>
                                
                                <%if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
                                %><li  ><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span><%=name%></a></li>
                                <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN|SIGNUP</a></li>
                                <% } else {%><li class="active"><a href="profile.jsp"><span class="glyphicon glyphicon-user"></span><%=name%></a></li>
                                <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGOUT</a></li>  
                                    <%}%>

                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
    <!--End of Navigation Bar-->
    
    <div class="container-fluid backg1 text-center">
  <h3 class="margin">Welcome!</h3>
  <img src="user.png" class="img-responsive img-circle margin" style="display:inline" alt="profile" width="300" height="300">
  <h3 class="text-uppercase"><%=name %></h3>
  <% if(role.equalsIgnoreCase("admin")){ %>
  <button type="button" id="add-to-wish" class="social-link">
               <a href="admin.jsp">Go to Admin Page &nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
          </button>
                      <% }
else if(role.equalsIgnoreCase("user")){ %>
 <button type="button" id="add-to-wish" class="social-link">
               <a href="start.jsp">Go to Home Page &nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
          </button>
  <%}  if(role.equalsIgnoreCase("user")){%>
<button type="button" id="add-to-wish" class="social-link">
               <a href="order.jsp">View Orders &nbsp;<i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
          </button>
<% } %>
</div>
    
  <div class="container-fluid backg2 ">
  <h1 class="margin">Details</h1>
  <div class="row">
      <div class="col-sm-6"><b>Email:</b></div>
      <div class="col-sm-6"><%=session.getAttribute("userid")%></div>
  </div>
  <div class="row">
      <div class="col-sm-6"><b>Contact:</b></div>
       <div class="col-sm-6"><%= contact %></div>
  </div>
  <div class="row">
      <div class="col-sm-6"><b>Date of Birth:</b></div>
       <div class="col-sm-6"><%= dob %></div>
  </div>
  <div class="row">
      <div class="col-sm-6"><b>City:</b></div>
       <div class="col-sm-6"><%= city %></div>
  </div>
  <div class="row">
      <div class="col-sm-6"><b>Address:</b></div>
       <div class="col-sm-6"><%= address %></div>
  </div>
  <div class="row">
      <div class="col-sm-6"><b>Role:</b></div>
       <div class="col-sm-6"><%= role %></div>
  </div><br/>
  <div class="row">
   <a href="#editProfile" class="btn btn-primary btn-lg social-link">
    <span class="glyphicon glyphicon-pencil"></span> Edit Profile
  </a>
  </div>
</div>
  <div class="container-fluid backg1 text-center" id="editProfile">
      <div class=" active row" >  
                        <h3 class="form-heading">Edit Your Details: </h3>
                        <form class="form-horizontal" method="POST" >
                             <div class="form-group row">
                                <label for="name" class="col-sm-4 control-label ">
                                    <span class=" center-block text-center"> Name:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder=" name" name="name" value="<%=name%>" required>
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="contact" class="col-sm-4 control-label"> 
                                    <span class=" center-block text-center">Contact:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Contact number" name="contact" value="<%=contact%>" required>
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="dob" class="col-sm-4 control-label "> <span class=" center-block text-center">Date of Birth:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="YYYY-MM-DD" name="dob" value="<%=dob%>" >
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="city" class="col-sm-4 control-label"> <span class=" center-block text-center">City:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="City" name="city" value="<%=city%>">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>

                            <div class="form-group row">
                                <label for="add" class="col-sm-4 control-label"> <span class=" center-block text-center">Delivery Address:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Delivery Address" name="add" value="<%= address%>" >
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                                     <div class="form-group row">

                                <button type="submit" name="submit"  class="btn btn-lg btn-primary col-sm-3 center-block social-link ">SUBMIT</button>

                                <button type="reset" name="reset" class="btn btn-lg  col-sm-3 center-block social-link pull-right" id="cancelbtn">CANCEL</button>						
                                <  
                            </div>

                        </form>
                                    <% 
                        if (request.getParameter("submit") == null) {
                        } else if (request.getParameter("submit") != null) {
                            try {
                                ps = con.prepareStatement("update bookstore.userdetails set uname=?,contact=?,dob=?,city=?,address=? where email=?");
                                ps.setString(1, request.getParameter("name"));
                                ps.setString(2, request.getParameter("contact"));

                                ps.setString(3, request.getParameter("dob"));
                                ps.setString(4, request.getParameter("city"));

                                ps.setString(5, request.getParameter("add"));
                                ps.setString(6, session.getAttribute("userid") + "");
                               
                                ps.executeUpdate();
                    %>
                     <div class="alert alert-success">Details Updated Successfully</div>
                    <a href="categories.jsp" style="color:yellow;"> Go Shopping</a>

                <%  } catch (Exception e) {%>
                 <div class="alert alert-danger"><%= e%></div>

                <%   }
                     }%>
      </div>
  </div>  
    <footer class="container-fluid backg2 text-center">
  <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href="" target="_blank">IET Lucknow</a></p> 
</footer>
    
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
    
    </body>
</html>
