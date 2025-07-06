<%-- 
    Document   : book
    Created on : 2 Jul, 2025, 10:11:01 PM
    Author     : Anmol
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>insert</title>
    </head>
    <body>
        <%
    String n1 = request.getParameter("n1"); 
    String n2 = request.getParameter("n2"); 
    String n3 = request.getParameter("n3"); 
    String n4 = request.getParameter("n4"); 
    String n5 = request.getParameter("n5"); 
    String n6 = request.getParameter("n6");
    String n7 = request.getParameter("n7"); 
    String n8 = request.getParameter("n8"); 

        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","System");
        Statement stmt = con.createStatement();

        int result = stmt.executeUpdate
        ("INSERT INTO bdetail VALUES('"+n1+"','"+n2+"','"+n3+"','"+n4+"','"+n5+"','"+n6+"','"+n7+"','"+n8+"')");

        if (result>0)
        {
            out.print("<h2>One Book Record Inserted Successfully!</h2>");
        } else
        {
            out.print("<h2> Failed to Insert Book Record.</h2>");
        }
%>
    </body>
</html>
