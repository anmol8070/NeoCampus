<%-- 
    Document   : SfBookdata
    Created on : 3 Jul, 2025, 1:01:24 PM
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
        <title>Staff List</title>
        <style>
        body {
            background-color: #fcefd4; /* light yellow-beige */
            font-family: Arial, sans-serif;
        }

        h2 {
            color: #6a1b9a;
            margin-top: 40px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            background-color: #fff9c4;
            box-shadow: 0px 0px 8px rgba(0,0,0,0.1);
        }

        th, td {
            border: 1px solid #a1887f;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #ffd54f;
            color: #4e342e;
        }

        td {
            background-color: #fff8e1;
        }

        center {
            margin-top: 20px;
        }
    </style>
    </head>
    <body>
    <center>
        <h2>Staff List</h2>
         <table border="2" name="horizontal">
               <tr>
                <th>Staff ID</th>
                <th>Staff First Name</th>
                <th>Staff Last Name</th>
                <th>Department</th>
                <th>Subject</th>
                <th>Mobile No</th>
            </tr>
              <%
                Class.forName("oracle.jdbc.driver.OracleDriver");        
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                Statement stmt=con.createStatement();
                
                ResultSet rs=stmt.executeQuery("select * from student");
                while(rs.next())
                {
              %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getString(5) %></td>
                <td><%= rs.getString(6) %></td>
            </tr>
                <%
               }
                %>
                
           </table>
    </center>
    </body>
</html>

