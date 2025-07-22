<%-- 
    Document   : sffetch
    Created on : 3 Jul, 2025, 12:45:45 PM
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
         <title>Search Student</title>
    </head>
    
    <body>
<%
    String n1 = request.getParameter("n1"); 
    String n2 = request.getParameter("n2"); 

    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
    Statement stmt = con.createStatement();

    ResultSet rs = stmt.executeQuery("SELECT * FROM staff WHERE department='" + n1 + "' AND staff_id='" + n2 + "'");

    if (rs.next()) 
    {
%>
    <center>
        <h2>Staff Details</h2>
        <table border="2" cellpadding="10">
            <tr>
                <th>Staff ID</th>
                <th>Staff First Name</th>
                <th>Staff Last Name</th>
                <th>Department</th>
                <th>Subject</th>
                <th>Mobile No</th>
            </tr>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getString(5) %></td>
                <td><%= rs.getString(6) %></td>
            </tr>
        </table>
    </center>
<%
    } else {
        out.print("<h2>Staff not found or data mismatch.</h3>");
    }
%>
                
         </body>
</html>

