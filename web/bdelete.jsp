<%-- 
    Document   : bdelete
    Created on : 2 Jul, 2025, 11:53:10 PM
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
        <title>delete</title>
    </head>
    <body>
         <% 
            String n1=request.getParameter("n1");
        
         Class.forName("oracle.jdbc.driver.OracleDriver");        
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
           Statement stmt=con.createStatement();
           
        int result=stmt.executeUpdate("Delete from bdetail where book_id='"+n1+"'");
           if(result>0)
           {
               out.print("<h1>One Record deleted");
           }
           %>
    </body>
</html>
