<%-- 
    Document   : sfupdate
    Created on : 3 Jul, 2025, 12:21:10 PM
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
        <title>Update Student data</title>
    </head>
    <body>
        <% String n1=request.getParameter("n1");
           String n2=request.getParameter("n2");
           String n3=request.getParameter("n3");
           
           Class.forName("oracle.jdbc.driver.OracleDriver");        
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
           Statement stmt=con.createStatement();
           
           int result = stmt.executeUpdate("UPDATE staff SET subject='"+n3+"'WHERE department='"+n1+"' AND staff_id='"+n2+"'");
           if(result>0)
           {
               out.print("<h1>Student One Record Updated");
           }
           else
                   {
                    out.print("<h1>Staff not found data Missmatch<h1>");
                   }
           %>
    </body>
</html>
