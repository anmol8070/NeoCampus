<%-- 
    Document   : studentlogin
    Created on : 3 Jul, 2025, 4:42:41 PM
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
    <title>Student Login Check</title>
</head>
<body>
<%
    String username=request.getParameter("n1");
    String password=request.getParameter("n2");

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    Statement stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("SELECT * FROM student WHERE username='"+username+"' AND password='"+password+"'");

    if (rs.next()) 
    {
        session.setAttribute("username",username);
        
        response.sendRedirect("studentportal.jsp");
    } 
    else
    {
%>     
    <center>
        <h2>Login Failed</h2>
        <p>Invalid username or password.</p>
        <a href="studentlogin.html">Try Again</a>
     </center>
<%
    }
%>
</body>
</html>

