<%-- 
    Document   : stafflogin
    Created on : 3 Jul, 2025, 11:20:17 PM
    Author     : Anmol
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  <%
    String username=request.getParameter("n1");
    String password=request.getParameter("n2");

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("SELECT * FROM staff WHERE username='"+username+"' AND password='"+password+"'");

    if (rs.next()) 
    {
         session.setAttribute("username",username);
         
        response.sendRedirect("staffportal.jsp");
    } 
    else
    {
%>     
    <center>
        <h2>Login Failed</h2>
        <p>Invalid username or password.</p>
        <a href="stafflogin.html">Try Again</a>
     </center>
<%
    }
%>
    </body>
</html>
