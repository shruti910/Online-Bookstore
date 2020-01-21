<%-- 
    Document   : editBookDetails
    Created on : Jul 11, 2017, 10:52:44 PM
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
        <title>Edit Book</title>
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
        <% String bid = request.getParameter("bid"); %>
        <section>
            <!-- left side start-->
            <div id="mySidenav" class="sidenav">
                <a href="admin.jsp"> Back to Admin Page </a>
                <a href="editCatg.jsp">Add/Delete Category</a>
                <a href="editProduct.jsp">Add Product</a>
                <a href="editProduct.jsp">Delete Product</a>
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
            <%!String auth, isbn, pub, pubdt, edn, dmn, desc, catg, bname, bsource, cg;
                int pages, sales;
                float price;%>
            <% ps = con.prepareStatement("select * from bookdetails where bid=?");
                ps.setInt(1, Integer.parseInt(bid));
                rs = ps.executeQuery();
                if (rs.next()) {
                    bname = rs.getString("bname");
                    bsource = rs.getString("bsource");
                    auth = rs.getString("bauthor");
                    isbn = rs.getString("isbn");
                    pub = rs.getString("publisher");
                    pubdt = rs.getString("pubdate");
                    edn = rs.getString("edition");
                    pages = rs.getInt("pages");
                    sales = rs.getInt("sales");
                    dmn = rs.getString("dimension");
                    price = rs.getFloat("price");
                    desc = rs.getString("description");
                    catg = rs.getString("category");
            %>
            <div id="page-wrapper" class="container theme-showcase" role="main">
                <div class="tab-content">

                    <form method="POST" action="editFileUpload.jsp?bid=<%=bid%>" enctype="multipart/form-data" >
                        <div class=" active row" >  
                            <h3 class="form-heading">Edit Book Details: </h3>
                            <div class="form-group row">
                                <label for="bname" class="col-sm-4 control-label col-md-offset-4">
                                    <span class=" center-block text-center">Book's Name:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Book name" name="bname" value="<%=bname%>" required>
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="auth" class="col-sm-4 control-label"> <span class=" center-block text-center">Author:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Author" name="auth" value="<%=auth%>" required>
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="isbn" class="col-sm-4 control-label "> <span class=" center-block text-center">ISBN:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="ISBN number" name="isbn" value="<%=isbn%>" required>
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="pub" class="col-sm-4 control-label"> <span class=" center-block text-center">Publisher:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Publisher" name="pub" value="<%= pub%>">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>

                            <div class="form-group row">
                                <label for="pubdt" class="col-sm-4 control-label"> <span class=" center-block text-center">Publication Date:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Publication Date" name="pubdt" value="<%= pubdt%>" >
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>

                            <div class="form-group row">
                                <label for="ed" class="col-sm-4 control-label"> <span class=" center-block text-center">Edition:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Edition" name="ed" value="<%= edn%>" >
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>

                            <div class="form-group row">
                                <label for="page" class="col-sm-4 control-label"> <span class=" center-block text-center">Number of Pages:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Pages" name="page" value="<%= pages%>">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="sales" class="col-sm-4 control-label"> <span class=" center-block text-center">Sales Ranking:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Sales Rank" name="sales" value="<%= sales%>" >
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="dmn" class="col-sm-4 control-label"> <span class=" center-block text-center">Dimension of Product:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Dimensions (Ex. 5.20(w) x 7.90(h) x 1.00(d))" name="dmn"  value="<%= dmn%>">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="price" class="col-sm-4 control-label"> <span class=" center-block text-center">Price:</span></label>

                                <div class='input-group'>
                                    <input class="form-control"  placeholder="Price in Rupees (&#8377;)" name="price" value="<%= price%>" required>
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                </div>

                            </div>
                            <div class="form-group row">
                                <label for="catg" class="col-sm-4 control-label"> <span class=" center-block text-center">Category:</span></label>
                                <div class="col-sm-3">
                                    <div class='input-group'>
                                        <input class="form-control"  id="cattext" name="selcat" value="<%= catg%>" readonly="readonly" required="true">

                                    </div></div>
                                <div class="col-sm-3">      
                                    <select name="selcat" class=" form-control" id="selopt" onchange="copy()">
                                        <%   ps = con.prepareStatement("select category from catgdetails");
                                            rs = ps.executeQuery();
                                            while (rs.next()) {
                                                cg = rs.getString("category");
                                        %>
                                        <option value="<%=cg%>"> <%=cg%></option>
                                        <% }%>
                                    </select><span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span></div>
                                <div class="col-sm-2"> 
                                    <button type="button" class='btn btn-default btn-sm pull-right'><a href="editCatg.jsp">Add New Category</a></button></div>
                            </div>
                            <div class="form-group row">
                                <label for="description" class="col-sm-4 control-label"> <span class=" center-block text-center">Description:</span></label>
                                <div class='col-sm-8'>
                                    <textarea class="form-control"  name="description" placeholder="Short Description" rows="5" required><%= desc%></textarea><br>
                                </div>   </div>
                            <div class="form-group row">
                                <label for="picname" class="col-sm-4 control-label"> <span class=" center-block text-center">Cover Image:</span></label>

                                <div class="col-sm-4">
                                    <img src="<%= bsource%>" class="img-thumbnail" style='height:150px; width:auto;' alt="image"></div>
                                <div class="col-sm-4"> <input class="form-control" id="picnm"  name="picname" value="<%= bsource%>"  readonly="readonly">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="fileupload" class="col-sm-4 control-label"> <span class=" center-block text-center">Upload image of book<span style="color:red;">*</span>:</span></label>
                               
                                <input type="file" id="file" name='file' class='col-sm-4' required="true"  onchange="myFunction()">

                            </div>
 <div class="form-group row">

                                <button type="submit" name="submit"  class="btn btn-lg btn-primary col-sm-3 center-block ">SUBMIT</button>

                                <button type="reset" name="reset" class="btn btn-lg btn-danger col-sm-3 center-block pull-right">CANCEL</button>						
 
                            </div>
                        </div>
                    </form>
                    <% }%>
                </div> </div>

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
        function copy() {
            var e = document.getElementById("selopt");
            var str = e.options[e.selectedIndex].value;
            document.getElementById("cattext").value = str;
        }

        function myFunction() {
            var x = document.getElementById("file").files[0].name;
            document.getElementById("picnm").value = x;
        }
    </script>
</body>
</html>
