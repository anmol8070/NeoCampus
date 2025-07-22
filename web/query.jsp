<%-- 
    Document   : query
    Created on : 4 Jul, 2025, 1:11:56 PM
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
        <title>Insert Staff Data</title>
    </head>
    <body>
        <%
    String n1 = request.getParameter("n1"); 
    String n2 = request.getParameter("n2"); 
    String n3 = request.getParameter("n3"); 


        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","System","System");
        Statement stmt = con.createStatement();

        int result = stmt.executeUpdate("INSERT INTO query VALUES('"+n1+"','"+n2+"','"+n3+"')");

        if (result>0)
        {
            out.print("<h2>Submit Query Successfully!</h2>");
        } else
        {
            out.print("<h2> Failed to Insert  Query Record.</h2>");
        }
%>
    </body>
</html>
