<%-- 
    Document   : signup
    Created on : Jun 10, 2017, 2:14:43 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="signuperror.jsp"%>
<%@ include file="connection.jsp" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
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
<!-- Bootstrap Date-Picker Plugin -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker3.min.css" />
<link rel="stylesheet" href="bootstrap/css/bootstrap-datetimepicker.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="bootstrap/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>
<script src="bootstrap/js/bootstrap-datetimepicker.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

<link href="bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="bootstrap/bootstrap-theme.min.css" rel="stylesheet">

<!-- Documentation extras -->

<link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
   <link href="style.css" rel="stylesheet">
   <link href="signup.css" rel="stylesheet">
  <title>Sign Up!</title>
  <link rel="icon" href="icon.png">
   <%String urole= session.getAttribute("role")+"";%>
  </head>
<body id="myPage" >
    <div class="se-pre-con"></div>
<div class="navbar-wrapper" >
<nav class="navbar  navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="sr-only">Toggle navigation</span>
         <i class="fa fa-bars fa-lg"></i>    
      </button>
      <a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-home"></span>&nbsp;Home</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
           <li><a href="start.jsp#rec">RECOMMENDED</a></li>

        <li class="dropdown">
        <a href="start.jsp#catg"  class="dropdown-toggle" data-toggle="dropdown">CATEGORIES<b class="caret"></b></a>
        <ul class="dropdown-menu" role="menu">
                  <li ><a href="categories.jsp" >Fantasy</a></li>
                  <li ><a href="categories.jsp">Drama</a></li>
                  <li><a href="categories.jsp">Adventure</a></li>
                   
                  <li ><a href="categories.jsp">Thriller</a></li>
                  <li><a href="categories.jsp">Romance</a></li>
</ul>

        </li>
        <li><a href="start.jsp#about"><span class="glyphicon glyphicon-info-sign"></span>ABOUT</a></li>
        <li><a href="start.jsp#contact"><span class="glyphicon glyphicon-earphone"></span>CONTACT</a></li>
        <%  if (urole.equalsIgnoreCase("user")) { %>
        <li><a href="cart.jsp"><span class="glyphicon glyphicon-shopping-cart"></span>CART</a></li>
        <% } %>
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>LOGIN</a></li>
        <li  class="active"><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span>SIGNUP</a></li>
        
      </ul>
    </div>
  </div>
</nav>
</div>
    <!-- Sign Up Form--->
    <div class="container">

	<div class="row main">
		<div class="panel-heading">
	             <div class="panel-title text-center">
	               		<h1 class="title">SIGN UP</h1>
	               		<hr />
	               	</div>
	            </div> 
				
            <div class="main-login main-center">
<form  onsubmit="return validatePassword()" method="POST" name="details" class="form-horizontal">
<div class="form-group" >
    <label for="name" class="col-sm-4 control-label">Name<span style="color:red;">*</span></label>
        <div class="col-sm-8">
    <div class='input-group'>
<input class="form-control" placeholder="Name" name="name" required autofocus>
<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
</div> 
</div>
</div>
<div class="form-group">
    <label for="email" class="col-sm-4 control-label">Email<span style="color:red;">*</span></label>
        <div class="col-sm-8">
    <div class='input-group'>
<input type="email" class="form-control"  placeholder="Email"  name="e-mail" required>
<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
    </div>
</div>
</div>
<div class="form-group">
    <label for="password" class="col-sm-4 control-label">Password<span style="color:red;">*</span> </label>
        <div class="col-sm-8">
     <div class='input-group'>
<input type="password" class="form-control" placeholder="Password" name="password" id="p" required>
<span class="input-group-addon"><i class="glyphicon glyphicon-lock "></i></span>
    </div>
</div>
</div>
    <div class="form-group">
        <label for="password" class="col-sm-4 control-label">Confirm Password<span style="color:red;">*</span></label>
        <div class="col-sm-8">
     <div class='input-group'>
<input type="password" class="form-control" placeholder=" Confirm Password" name="pwd" id="cp" required>
<span class="input-group-addon"><i class="glyphicon glyphicon-lock "></i></span> 
    </div>
</div>
    </div>   
<div class="form-group" >
    <label for="contact" class="col-sm-4 control-label">Mobile No. <span style="color:red;">*</span></label>
        <div class="col-sm-8">
     <div class='input-group'>
<input type="number" class="form-control"  placeholder="Contact" name="contact" required>
<span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
    </div>
     </div>
</div>
    <div class="form-group">
        <label for="dob" class="col-sm-4 control-label">Date of Birth</label>
        <div class="col-sm-8">
                <div class='input-group input-append  date' id='datetimepicker1' >
                    <input type='text' class="form-control" placeholder="YYYY-MM-DD" name="dob"  />
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
    </div>
 

<div class="form-group">
    <label for="city" class="col-sm-4 control-label">City<span style="color:red;">*</span></label>
        <div class="col-sm-8">
     <div class='input-group'>
<input class="form-control"  placeholder="City" name="city" required>
<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
    </div>
        </div>							
</div>
<div class="form-group">
    <label for="address" class="col-sm-4 control-label">Address<span style="color:red;">*</span></label>
        <div class="col-sm-8">
     <div class='input-group'>
<input class="form-control"  placeholder="Address" name="address" required>
<span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
    </div>
        </div>
</div>
  <!--  <div class="form-group">
  <label for="role"  class="col-sm-4 control-label">Select your role:<span style="color:red;">*</span></label>
   <div class="col-sm-8">
  <select class="form-control" name="role">
    <option value="user">user</option>
    <option value="admin">admin</option>
    
  </select>
</div>
    </div>-->
    <div class="form-group row">
        <div class="col-sm-6 btn-con">
<button type="submit" name="submit"  class="btn btn-lg btn-primary  ">SUBMIT</button>
        </div>
       <div class="col-sm-6 btn-con">
<button type="reset" name="reset" class="btn btn-lg btn-danger  pull-right">CANCEL</button>						
</div>    
    </div>
</form>
</div>
</div>
        <% 
            if(request.getParameter("submit")==null){}
          
            else if(request.getParameter("submit")!=null){
    ps = con.prepareStatement("insert into bookstore.userdetails(uname,email,upassword,contact,dob,city,address,role) values (?,?,?,?,?,?,?,?)");
  ps.setString(1,request.getParameter("name"));    
    ps.setString(2,request.getParameter("e-mail"));
    
    ps.setString(3,request.getParameter("password"));
    ps.setString(4,request.getParameter("contact"));
 
    ps.setString(5,request.getParameter("dob"));
     ps.setString(6,request.getParameter("city"));
    ps.setString(7,request.getParameter("address"));
     ps.setString(8,"user");
    ps.executeUpdate();
    response.sendRedirect("welcome.jsp");
    }
    else {
        response.sendRedirect("signup.jsp");
    
    }


    
%>
    </div>
    <footer class="container-fluid backg3 text-center">
  <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href="" target="_blank">IET Lucknow</a></p> 
</footer>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="bootstrap/bootstrap.min.js"></script>
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
    
	
         <script type="text/javascript">
            $(function () {
                 $('#datetimepicker1').datepicker({
                     autoclose: true, 
        todayHighlight: true,
    format: 'yyyy-mm-dd'});
            });


function validatePassword(){
            var pass1 = document.getElementById("p").value;
    var pass2 = document.getElementById("cp").value;
            var ok=true;
            if (pass1!== pass2) {
               alert("Passwords Don't Match");
              
               ok=false;
             }
         return ok;    
     }
            


  </script>
 
</body>
</html>