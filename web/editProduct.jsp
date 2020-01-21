<%-- 
    Document   : editProduct
    Created on : Jul 9, 2017, 4:58:13 PM
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
        <%! String Catg = "";
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
                    <form method="POST" action="FileUpload.jsp" enctype="multipart/form-data" >
 <h3 class="form-heading">Add New Book Details</h3>
 
                        <div class="form-group row">
                            <label for="bname" class="col-sm-4 control-label col-md-offset-4">
                                <span class=" center-block text-center">Book's Name<span style="color:red;">*</span>:</span></label>

                            <div class='input-group'>
                                <input class="form-control"  placeholder="Book name" name="bname" required >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="auth" class="col-sm-4 control-label"> <span class=" center-block text-center">Author<span style="color:red;">*</span>:</span></label>

                            <div class='input-group'>
                                <input class="form-control"  placeholder="Author" name="auth" required>
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="isbn" class="col-sm-4 control-label "> <span class=" center-block text-center">ISBN<span style="color:red;">*</span>:</span></label>

                            <div class='input-group'>
                                <input class="form-control"  placeholder="ISBN number" name="isbn" required="true" >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="pub" class="col-sm-4 control-label"> <span class=" center-block text-center">Publisher:</span></label>

                            <div class='input-group'>
                                <input class="form-control"  placeholder="Publisher" name="pub" >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            </div>

                        </div>

                        <div class="form-group row">
                            <label for="pubdt" class="col-sm-4 control-label"> <span class=" center-block text-center">Publication Date:</span></label>

                            <div class='input-group'>
                                <input class="form-control"  placeholder="Publication Date" name="pubdt" >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            </div>

                        </div>

                        <div class="form-group row">
                            <label for="ed" class="col-sm-4 control-label"> <span class=" center-block text-center">Edition:</span></label>

                            <div class='input-group'>
                                <input class="form-control"  placeholder="Edition" name="ed" >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            </div>

                        </div>

                        <div class="form-group row">
                            <label for="page" class="col-sm-4 control-label"> <span class=" center-block text-center">Number of Pages:</span></label>

                            <div class='input-group'>
                                <input class="form-control"  placeholder="Pages" value="0" name="page" >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="sales" class="col-sm-4 control-label"> <span class=" center-block text-center">Sales Ranking:</span></label>

                            <div class='input-group'>
                                <input class="form-control"  placeholder="Sales Rank" value="0" name="sales" >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="dmn" class="col-sm-4 control-label"> <span class=" center-block text-center">Dimension of Product:</span></label>

                            <div class='input-group'>
                                <input class="form-control"  placeholder="Dimensions (Ex. 5.20(w) x 7.90(h) x 1.00(d))" name="dmn" >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="price" class="col-sm-4 control-label"> <span class=" center-block text-center">Price<span style="color:red;">*</span>:</span></label>

                            <div class='input-group'>
                                <input class="form-control"  placeholder="Price in Rupees (&#8377;)" name="price" required="true" >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                            </div>

                        </div>
                        <div class="form-group row">
                            <label for="catg" class="col-sm-4 control-label"> <span class=" center-block text-center">Category<span style="color:red;">*</span>:</span></label>
  <div class="col-sm-8">
        <select name="selcat" class=" form-control">
                            <%   ps = con.prepareStatement("select category from catgdetails");
            rs = ps.executeQuery();
            while (rs.next()) {
                 Catg=rs.getString("category");
               %>
    <option value="<%=Catg%>"> <%=Catg %></option>
   <% } %>
  </select> 
  <button type="button" class='btn btn-default btn-sm pull-right'><a href="editCatg.jsp">Add New Category</a></button>
                           </div>

                        </div>
                        <div class="form-group row">
                            <label for="catg" class="col-sm-4 control-label"> <span class=" center-block text-center">Description<span style="color:red;">*</span>:</span></label>
                            <div class='col-sm-8'>
                                <textarea class="form-control"  name="description" placeholder="Short Description" rows="5" required="true"></textarea><br>
                            </div>   </div>

  <div class=" form-group row">
      <div class="form-group row">
    <label for="fileupload" class="col-sm-4 control-label"> <span class=" center-block text-center">Upload image of book<span style="color:red;">*</span>:</span></label>
                            <!--<div class='input-group col-sm-6'>-->
                            <input type="file" id="file" name='file' class='col-sm-4' required="true"  onchange="myFunction()">
                           
        </div>
      <label for="picname" class="col-sm-4 control-label"> <span class=" center-block text-center">Selected Image:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  id="picnm" name="picname"  readonly="readonly">
                                    
                               </div>                     
  </div>
  
                        <div class="form-group row">

                            <button type="submit" name="submit"  class="btn btn-lg btn-primary col-sm-3 center-block ">SUBMIT</button>

                            <button type="reset" name="reset" class="btn btn-lg btn-danger col-sm-3 center-block pull-right">CANCEL</button>						
                            <  
                        </div>
                    </form> 
   
                </div> </div>
  
               
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

           function myFunction(){
              var x = document.getElementById("file").files[0].name;
             // var x =document.getElementById("file").value;
                document.getElementById("picnm").value = x;
           }
        </script>    

    </body></html>