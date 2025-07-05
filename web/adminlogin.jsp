<%-- 
    Document   : adminlogin
    Created on : 2 Jul, 2025, 7:38:16 PM
    Author     : Anmol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
    </head>
    <body>
     <%
          String username = request.getParameter("username");
          String password = request.getParameter("password");

      if ("admin".equals(username) && "admin".equals(password))
       {
        response.sendRedirect("option.html");
        }  
         else 
        {
     %>
        <h2>Login Failed</h2>
        <p>Invalid username or password.</p>
        <a href="adminlogin.html">Try Again</a>
     <%
        }
        %>

    </body>
</html>
