<%-- 
    Document   : FileUpload
    Created on : Jul 19, 2017, 8:11:10 PM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.*" %>
<%@include file="connection.jsp" %> 
<%@ page import ="java.util.logging.Level" %>
<%@ page import=" java.util.logging.Logger" %>
<%@ page import="javax.servlet.ServletException" %>
<%@page import=" javax.servlet.annotation.MultipartConfig" %>"
<%@page import=" javax.servlet.annotation.WebServlet" %>
<%@page import=" javax.servlet.http.HttpServlet" %>
<%@page import=" javax.servlet.http.HttpServletRequest" %>
<%@page import=" javax.servlet.http.HttpServletResponse" %>
<%@page import ="javax.servlet.http.Part" %>
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<link href="style.css" rel="stylesheet" type="text/css">
<% 

 String path="C:/Users/User/Documents/NetBeansProjects/bookstore/web";
 final Part filePart = request.getPart("file");
    final String fileName = getFileName(filePart);
    OutputStream o = null;
    InputStream filecontent = null;
    final PrintWriter writer = response.getWriter();
   

    try {
        o = new FileOutputStream(new File(path + File.separator
                + fileName));
        filecontent = filePart.getInputStream();

        int read = 0;
        final byte[] bytes = new byte[1024];

        while ((read = filecontent.read(bytes)) != -1) {
            o.write(bytes, 0, read);
        }
         
      } catch (FileNotFoundException fne) {
        writer.println("You either did not specify a file to upload or are "
                + "trying to upload a file to a protected or nonexistent "
                + "location.");
        writer.println("<br/> ERROR: " + fne.getMessage());
        } 

                   if (request.getParameter("submit") == null) {
                    } else if (request.getParameter("submit") != null) {
                        try{
                        ps = con.prepareStatement("insert into bookstore.bookdetails(bname,bsource,bauthor,isbn,publisher,pubdate,edition,pages,sales,dimension,price,description,category) values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
                        ps.setString(1, request.getParameter("bname"));
                        ps.setString(2, request.getParameter("picname"));

                        ps.setString(3, request.getParameter("auth"));
                        ps.setString(4, request.getParameter("isbn"));

                        ps.setString(5, request.getParameter("pub"));
                        ps.setString(6, request.getParameter("pubdt"));
                        ps.setString(7, request.getParameter("ed"));
                        ps.setInt(8, Integer.parseInt(request.getParameter("page")));
                        ps.setInt(9, Integer.parseInt(request.getParameter("sales")));
                        ps.setString(10, request.getParameter("dmn"));
                        ps.setFloat(11,Float.parseFloat(request.getParameter("price")));
                        ps.setString(12, request.getParameter("description"));
                        ps.setString(13, request.getParameter("selcat"));
                        ps.executeUpdate(); 
                        %>
                        <div class="jumbotron text-center"><h2>New Book Details Saved Successfully</h2>
                            <br/> <a href="admin.jsp"> Go Back</a></div>
                        <%}catch(Exception e) {%>
                <div style="color:red;"> <%=e %></div>
                 <%  }} %>
   
    <%!
     private String getFileName(final Part part) {
    final String partHeader = part.getHeader("content-disposition");
    for (String content : part.getHeader("content-disposition").split(";")) {
        if (content.trim().startsWith("filename")) {
            return content.substring(
                    content.indexOf('=') + 1).trim().replace("\"", "");
        }
    }
    return null;
}
%>