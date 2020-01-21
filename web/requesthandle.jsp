<%-- 
    Document   : requesthandle
    Created on : Jul 20, 2017, 12:15:42 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page session="true" %>
<%@ page import ="java.sql.*" %>
<%@include file="connection.jsp" %>
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="style.css" rel="stylesheet">

<%    // HttpSession mysession = request.getSession();
    int qty = Integer.parseInt(request.getParameter("quant"));
    if(session.getAttribute("userid")==null){
    response.sendRedirect("login.jsp");}
    if (request.getParameter("addtocart") == null) {
    } else if (request.getParameter("addtocart") != null && session.getAttribute("userid")!=null) {
        try {
            ps = con.prepareStatement("insert into bookstore.cart(bid,bname,bsource,price,quantity,email,status) values (?,?,?,?,?,?,?)");
            ps.setInt(1, Integer.parseInt(request.getParameter("bid")));
            ps.setString(3, request.getParameter("source"));

            ps.setString(2, request.getParameter("bname"));
            ps.setFloat(4, Float.parseFloat(request.getParameter("price")));
            ps.setInt(5, qty);
            ps.setString(6, session.getAttribute("userid") + "");
            ps.setInt(7, 0);
            ps.executeUpdate();
            response.sendRedirect("cart.jsp");
        } catch (Exception e) {%>
<div style="color:red;"> <%=e%></div><br/>

<a href="categories.jsp"  >Go Back</a>
<%
        }
    }
    if (request.getParameter("addtowish") == null) {
    } else if (request.getParameter("addtowish") != null && session.getAttribute("userid")!=null) {
        try {
            ps = con.prepareStatement("select * from bookstore.wishlist  where email=? and bid=?");
            ps.setString(1, session.getAttribute("userid") + "");
            ps.setInt(2, Integer.parseInt(request.getParameter("bid")));
            rs = ps.executeQuery();
            if (rs.next()) {%> <div class="jumbotron text-center"><h3>This Item is already added to your wishlist </h3></div><br/> <%} else {
                ps = con.prepareStatement("insert into bookstore.wishlist(bid,bsource,bname,price,email) values (?,?,?,?,?)");
                ps.setInt(1, Integer.parseInt(request.getParameter("bid")));
                ps.setString(2, request.getParameter("source"));

                ps.setString(3, request.getParameter("bname"));
                ps.setFloat(4, Float.parseFloat(request.getParameter("price")));
                ps.setString(5, session.getAttribute("userid") + "");

                ps.executeUpdate();
                response.sendRedirect("wishlist.jsp");
            }
        } catch (Exception e) {%>
<div style="color:red;"> <%=e%></div><br/>

<a href="categories.jsp"  >Go Back</a>
<%
        }
    }

    if (request.getParameter("btn1") != null && session.getAttribute("userid")!=null) {
        ps = con.prepareStatement("insert into bookstore.cart(bid,bname,bsource,price,quantity,email,status) values (?,?,?,?,?,?,?)");
        ps.setInt(1, 2);
        ps.setString(2, "All the Light We Cannot See");
        ps.setString(3, "allthelight.jpg");
        ps.setFloat(4, Float.parseFloat("696.61"));
        ps.setInt(5, qty);
        ps.setString(6, session.getAttribute("userid") + "");
        ps.setInt(7, 0);
        ps.executeUpdate();
        response.sendRedirect("cart.jsp");

    }
    if (request.getParameter("btn2") != null && session.getAttribute("userid")!=null) {
        ps = con.prepareStatement("insert into bookstore.cart(bid,bname,bsource,price,quantity,email,status) values (?,?,?,?,?,?,?)");
        ps.setInt(1, 6);
        ps.setString(3, "got.jpg");

        ps.setString(2, "A Game of Thrones");
        ps.setFloat(4, Float.parseFloat("511.32"));
        ps.setInt(5, qty);
        ps.setString(6, session.getAttribute("userid") + "");
        ps.setInt(7, 0);
        ps.executeUpdate();

        response.sendRedirect("cart.jsp");
    }
    if (request.getParameter("btn3") != null && session.getAttribute("userid")!=null) {
        ps = con.prepareStatement("insert into bookstore.cart(bid,bname,bsource,price,quantity,email,status) values (?,?,?,?,?,?,?)");
        ps.setInt(1, 4);
        ps.setString(3, "fault-in-our-stars.jpg");

        ps.setString(2, "The Fault in our Stars");
        ps.setString(4, "774.3");
        ps.setInt(5, qty);
        ps.setString(6, session.getAttribute("userid") + "");
        ps.setInt(7, 0);
ps.executeUpdate();
        response.sendRedirect("cart.jsp");
    }
    if (request.getParameter("btn4") != null && session.getAttribute("userid")!=null) {
        ps = con.prepareStatement("insert into bookstore.cart(bid,bname,bsource,price,quantity,email,status) values (?,?,?,?,?,?,?)");
        ps.setInt(1, 5);
        ps.setString(3, "lord.jpg");

        ps.setString(2, "The Lord of the Rings");
        ps.setString(4, "1328.92");
        ps.setInt(5, qty);
        ps.setString(6, session.getAttribute("userid") + "");
        ps.setInt(7, 0);
ps.executeUpdate();
        response.sendRedirect("cart.jsp");
    }
    if (request.getParameter("btn5") != null && session.getAttribute("userid")!=null) {
        ps = con.prepareStatement("insert into bookstore.cart(bid,bname,bsource,price,quantity,email,status) values (?,?,?,?,?,?,?)");
        ps.setInt(1, 3);
        ps.setString(3, "mockingbird.jpg");

        ps.setString(2, "To Kill a Mockingbird");
        ps.setString(4, "503.68");
        ps.setInt(5, qty);
        ps.setString(6, session.getAttribute("userid") + "");
        ps.setInt(7, 0);
ps.executeUpdate();
        response.sendRedirect("cart.jsp");
    }
    if (request.getParameter("btn6") != null && session.getAttribute("userid")!=null) {
        ps = con.prepareStatement("insert into bookstore.cart(bid,bname,bsource,price,quantity,email,status) values (?,?,?,?,?,?,?)");
        ps.setInt(1, 1);
        ps.setString(3, "life-of-pi.jpg");

        ps.setString(2, "Life of Pi");
        ps.setString(4, "624.66");
        ps.setInt(5, qty);
        ps.setString(6, session.getAttribute("userid") + "");
        ps.setInt(7, 0);
ps.executeUpdate();
        response.sendRedirect("cart.jsp");
    }

    if (request.getParameter("bt1") != null && session.getAttribute("userid")!=null) {
        try {
            ps = con.prepareStatement("select * from bookstore.wishlist  where email=? and bid=?");
            ps.setString(1, session.getAttribute("userid") + "");
            ps.setInt(2, 2);
            rs = ps.executeQuery();
                       if (rs.next()) {%> <div class="jumbotron text-center"><h3>This Item is already added to your wishlist </h3></div><br/> 
<%} else {
        ps = con.prepareStatement("insert into bookstore.wishlist(bid,bsource,bname,price,email) values (?,?,?,?,?)");
        ps.setInt(1, 2);
        ps.setString(2, "allthelight.jpg");

        ps.setString(3, "All the Light We Cannot See");
        ps.setString(4, "696.61");
        ps.setString(5, session.getAttribute("userid") + "");

        ps.executeUpdate();
        response.sendRedirect("wishlist.jsp");
    }
} catch (Exception e) {
%>
<div style="color:red;"> <%=e%></div><br/>
<div><h2>This item is already added to your Wish List.</h2></div>
<a href="categories.jsp"  >Go Back</a>
<%
        }
    }
    if (request.getParameter("bt2") != null && session.getAttribute("userid")!=null) {

        try {
            ps = con.prepareStatement("select * from bookstore.wishlist  where email=? and bid=?");
            ps.setString(1, session.getAttribute("userid") + "");
            ps.setInt(2, 6);
            rs = ps.executeQuery();
                       if (rs.next()) {%> <div class="jumbotron text-center"><h3>This Item is already added to your wishlist </h3></div><br/> 
<%} else {
        ps = con.prepareStatement("insert into bookstore.wishlist(bid,bsource,bname,price,email) values (?,?,?,?,?)");
        ps.setInt(1, 6);
        ps.setString(2, "got.jpg");

        ps.setString(3, "A Game of Thrones");
        ps.setString(4, "511.32");
        ps.setString(5, session.getAttribute("userid") + "");

        ps.executeUpdate();
        response.sendRedirect("wishlist.jsp");
    }
} catch (Exception e) {
%>
<div style="color:red;"> <%=e%></div><br/>
<div><h2>This item is already added to your Wish List.</h2></div>
<a href="categories.jsp"  >Go Back</a>
<%
        }
    }
    if (request.getParameter("bt3") != null && session.getAttribute("userid")!=null) {
        try {
            ps = con.prepareStatement("select * from bookstore.wishlist  where email=? and bid=?");
            ps.setString(1, session.getAttribute("userid") + "");
            ps.setInt(2, 4);
            rs = ps.executeQuery();
                       if (rs.next()) {%> <div class="jumbotron text-center"><h3>This Item is already added to your wishlist </h3></div><br/> 
<%} else {
        ps = con.prepareStatement("insert into bookstore.wishlist(bid,bsource,bname,price,email) values (?,?,?,?,?)");
        ps.setInt(1, 4);
        ps.setString(2, "fault-in-our-stars.jpg");

        ps.setString(3, "The Fault in our Stars");
        ps.setString(4, "774.3");
        ps.setString(5, session.getAttribute("userid") + "");

        ps.executeUpdate();
        response.sendRedirect("wishlist.jsp");
    }
} catch (Exception e) {
%>
<div style="color:red;"> <%=e%></div><br/>
<div><h2>This item is already added to your Wish List.</h2></div>
<a href="categories.jsp"  >Go Back</a>
<%
        }
    }
    if (request.getParameter("bt4") != null && session.getAttribute("userid")!=null) {
        try {
            ps = con.prepareStatement("select * from bookstore.wishlist  where email=? and bid=?");
            ps.setString(1, session.getAttribute("userid") + "");
            ps.setInt(2, 5);
            rs = ps.executeQuery();
                       if (rs.next()) {%> <div class="jumbotron text-center"><h3>This Item is already added to your wishlist </h3></div><br/> 
<%} else {
        ps = con.prepareStatement("insert into bookstore.wishlist(bid,bsource,bname,price,email) values (?,?,?,?,?)");
        ps.setInt(1, 5);
        ps.setString(2, "lord.jpg");

        ps.setString(3, "The Lord of the Rings");
        ps.setString(4, "1328.92");
        ps.setString(5, session.getAttribute("userid") + "");

        ps.executeUpdate();
        response.sendRedirect("wishlist.jsp");
    }
} catch (Exception e) {
%>
<div style="color:red;"> <%=e%></div><br/>
<div><h2>This item is already added to your Wish List.</h2></div>
<a href="categories.jsp"  >Go Back</a>
<%
        }
    }
    if (request.getParameter("bt5") != null && session.getAttribute("userid")!=null) {
        try {
            ps = con.prepareStatement("select * from bookstore.wishlist  where email=? and bid=?");
            ps.setString(1, session.getAttribute("userid") + "");
            ps.setInt(2, 3);
            rs = ps.executeQuery();
                       if (rs.next()) {%> <div class="jumbotron text-center"><h3>This Item is already added to your wishlist </h3></div><br/> 
<%} else {
        ps = con.prepareStatement("insert into bookstore.wishlist(bid,bsource,bname,price,email) values (?,?,?,?,?)");
        ps.setInt(1, 3);
        ps.setString(2, "mockingbird.jpg");

        ps.setString(3, "To Kill a Mockingbird");
        ps.setString(4, "503.68");
        ps.setString(5, session.getAttribute("userid") + "");

        ps.executeUpdate();
        response.sendRedirect("wishlist.jsp");
    }
} catch (Exception e) {
%>
<div style="color:red;"> <%=e%></div><br/>
<div><h2>This item is already added to your Wish List.</h2></div>
<a href="categories.jsp"  >Go Back</a>
<%
        }
    }
    if (request.getParameter("bt6") != null && session.getAttribute("userid")!=null) {
        try {
            ps = con.prepareStatement("select * from bookstore.wishlist  where email=? and bid=?");
            ps.setString(1, session.getAttribute("userid") + "");
            ps.setInt(2, 1);
            rs = ps.executeQuery();
                       if (rs.next()) {%> <div class="jumbotron text-center"><h3>This Item is already added to your wishlist </h3></div><br/> 
<%} else {
        ps = con.prepareStatement("insert into bookstore.wishlist(bid,bsource,bname,price,email) values (?,?,?,?,?)");
        ps.setInt(1, 1);
        ps.setString(2, "life-of-pi.jpg");

        ps.setString(3, "Life of Pi");
        ps.setString(4, "624.66");
        ps.setString(5, session.getAttribute("userid") + "");

        ps.executeUpdate();
        response.sendRedirect("wishlist.jsp");
    }
} catch (Exception e) {
%>
<div style="color:red;"> <%=e%></div><br/>
<div><h2>This item is already added to your Wish List.</h2></div>
<a href="categories.jsp"  >Go Back</a>
<%
        }
    }

   
%>