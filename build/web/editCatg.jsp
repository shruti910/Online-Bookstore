<%-- 
    Document   : editCatg
    Created on : Jul 8, 2017, 11:19:41 PM
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

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        <link href="bootstrap/bootstrap.min.css" rel="stylesheet">
        <link href="bootstrap/bootstrap-theme.min.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <script src="bootstrap/bootstrap.min.js"></script>
        <title>Welcome Admin</title>
        <link rel="icon" href="icon.png">
        <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
        <link href="style.css" rel="stylesheet">
        <link href="adminstyle.css" rel="stylesheet">

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

    </head>
    <body id="myPage" class="sticky-header left-side-collapsed">

        <div class="se-pre-con"></div>
        <!----------------------------------------------side navigation--------------------------------------------->       
        <%! String Catg="";
        int cno;%>
        
        
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

<section id="main">
        <div class="navbar-wrapper" >
            <nav class="navbar  navbar-fixed-top" role="navigation">
                <div class="container">

                    <div class="navbar-header">
                        <!--toggle button start-->
                        <a class="toggle-btn pull-right" onclick="openNav()" data-toggle="tooltip" title="Options" data-placement=" auto bottom"><i class="fa fa-list tgl" aria-hidden="true"></i></a>
                        <!--toggle button end-->
                       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="sr-only">Toggle navigation</span>
                           <i class="fa fa-bars fa-lg tgl" aria-hidden="true"></i>                      
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
         <div id="page-wrapper" class="container theme-showcase" role="main">
	
	
	<div class="tab-content">
	<div class=" active row" >  
            <h3 class="form-heading"> Already existing categories</h3>
             <div class="table-responsive">
            <table class="table table-striped table-hover">
              <tbody>
            <% ps = con.prepareStatement("select * from catgdetails");
            rs = ps.executeQuery();
            while (rs.next()) {
                 Catg=rs.getString("category");
                 cno=rs.getInt("cid");
            %>
               
                <tr>
                    <td class="text-uppercase" style="color:black;"><%=Catg%></td>
                    <td><a href="deletecatg.jsp?cid=<%=cno%>"><button type="submit" class="btn btn-danger" role="button">Delete &nbsp;<i class="fa fa-trash-o fa-lg"></i></button></a>
                    </td>
                </tr>
   
          <%  }%>
              </tbody></table></div></div></div>
      
             <div class="tab-content">
             <h3 class="form-heading">Add Category</h3>
         <form class="form-horizontal" method="POST">
	
             <div class="form-group row">
   <!-- <label for="catg" class="col-sm-4 control-label">Category</label>-->
       
     <div class='input-group'>
         <input class="form-control"  placeholder="Add new category" name="catg" required>
<span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
    </div>
       						
</div>
<div class="form-group row">
        <div class="col-sm-6 btn-con">
<button type="submit" name="submit"  class="btn btn-lg btn-primary ">SUBMIT</button>
        </div>
       <div class="col-sm-6 btn-con">
<button type="reset" name="reset" class="btn btn-lg btn-danger">CANCEL</button>						
</div>    
    </div>
         </form>                       
        </div>
        <div>
              <% String ex=" ";
            if(request.getParameter("submit")==null){}
          
            else if(request.getParameter("submit")!=null){
                try{
    ps = con.prepareStatement("insert into bookstore.catgdetails(category) values (?)");
    ps.setString(1,request.getParameter("catg")); 
ps.executeUpdate();
             %> <div class="alert alert-success">
                 Category Updated
</div>
            <%}
catch(Exception e){
 ex=e.getMessage(); %>
<div class="alert alert-danger"><%=ex%> </div> 
<% } 
} %> 

        </div> 
<footer class="container-fluid backg3 text-center">
  <p>© 2017 Bookstore. All Rights Reserved | Design by  <a href="" target="_blank">IET Lucknow</a></p> 
</footer>
          </div>
      
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
             $(document).ready(function(){
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
