<%-- 
    Document   : viewAllQuery
    Created on : 4 Jul, 2025, 1:18:26 PM
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
        <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #e0c3fc, #8ec5fc);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background: white;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 900px;
        }

        h2 {
            text-align: center;
            color: #4a148c;
            margin-bottom: 25px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background-color: #6a1b9a;
            color: white;
            padding: 12px;
            text-align: center;
            font-size: 16px;
        }

        td {
            padding: 10px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            font-size: 15px;
            color: #333;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
    </head>
    <body>
        <center>
        <h2>Query List</h2>
         <table border="2" name="horizontal">
             <tr>
                <th>User</th>
                <th>User Id</th>
                <th>Query</th>
            </tr>
              <%
                Class.forName("oracle.jdbc.driver.OracleDriver");        
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                Statement stmt=con.createStatement();
                
                ResultSet rs=stmt.executeQuery("select * from query");
                while(rs.next())
                {
              %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>

            </tr>
                <%
               }
                %>
                
           </table>
    </center>
    </body>
</html>
