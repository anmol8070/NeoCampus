<%-- 
    Document   : sdelete
    Created on : 3 Jul, 2025, 10:15:09 AM
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
        <title>Delete Student Data</title>
    </head>
    <body>
        <% 
            String n1=request.getParameter("n1");
            String n2=request.getParameter("n2");
        
           Class.forName("oracle.jdbc.driver.OracleDriver");        
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
           Statement stmt=con.createStatement();
           
           int result = stmt.executeUpdate("DELETE FROM student WHERE branch ='"+n1+"'AND roll_no='"+n2+"'");       

           if(result>0)
           {
               out.print("<h1>One Record deleted");
           }
           else
                   {
                    out.print("<h1>Student not found data Missmatch<h1>");
                   }
           %>
    </body>
</html>
