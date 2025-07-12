<%-- 
    Document   : bBookdata
    Created on : 3 Jul, 2025, 12:40:02 AM
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
        <style>
        body {
            background-color: #f0f5e6; /* Light greenish background */
            font-family: Verdana, sans-serif;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #444;
            margin-top: 20px;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fdf0e6; /* soft light orange background */
        }

        th, td {
            border: 1px solid #aaa;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #ffcc99; /* light orange */
            color: #222;
        }

        tr:nth-child(even) {
            background-color: #f7eadb; /* lighter row color */
        }

        tr:nth-child(odd) {
            background-color: #fff3e0; /* alternate row color */
        }
    </style>
        <title>Book Data</title>
    </head>
    <body>
      <center>
        <h2>Staff List</h2>
         <table border="2" name="horizontal">
               <tr><th>Book-id</th>
                   <th>Book-NAME</th>
                   <th>Subject</th>
                   <th>Author</th>
                   <th>Publish</th>
                   <th>price</th>
                   <th>Quantity</th>
                   <th>Department</th>
               </tr>
           <%
                Class.forName("oracle.jdbc.driver.OracleDriver");        
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                Statement stmt=con.createStatement();
                
                ResultSet rs=stmt.executeQuery("select * from bdetail");
                while(rs.next())
                {
                 %>
                 <tr>
                   <td><%=rs.getString(1)%></td>
                   <td><%=rs.getString(2)%></td>
                   <td><%=rs.getString(3)%></td>
                   <td><%=rs.getString(4)%></td>
                   <td><%=rs.getString(5)%></td>
                   <td><%=rs.getString(6)%></td>
                   <td><%=rs.getString(7)%></td>
                   <td><%=rs.getString(8)%></td>
                 </tr>
                <%
               }
                %>
                
           </table>
      </center>
    </body>
</html>
