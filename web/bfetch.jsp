<%-- 
    Document   : bfetch
    Created on : 3 Jul, 2025, 12:17:25 AM
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
        <title>Search One Book</title>
        <style>
        body {
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
        }

        table {
            margin: 50px auto;
            width: 90%;
            border-collapse: collapse;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
        }

        th, td {
            padding: 12px;
            border: 1px solid #aaa;
            text-align: center;
        }

        th {
            background-color: #009688;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #e0f2f1;
        }

        tr:hover {
            background-color: #b2dfdb;
        }

        h2 {
            text-align: center;
            color: #004d40;
        }
    </style>
    </head>
    <body>
    <% String n1=request.getParameter("n1"); %>
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
                
                ResultSet rs=stmt.executeQuery("select * from bdetail where book_name='"+n1+"'");
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
</body>
</html>