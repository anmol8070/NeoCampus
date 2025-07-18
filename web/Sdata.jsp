<%-- 
    Document   : SBookdata
    Created on : 3 Jul, 2025, 11:52:42 AM
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
        <title>Student List</title>
        <style>
        body {
            background-color: #f9f5e9; /* soft light background */
            font-family: Arial, sans-serif;
        }

        h2 {
            text-align: center;
            color: #2d3436;
            margin-top: 30px;
        }

        table {
            border-collapse: collapse;
            width: 90%;
            margin: 20px auto;
            background-color: #fcf3cf; /* soft yellow table */
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #dcdde1;
            font-size: 14px;
        }

        th {
            background-color: #f6b93b;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #fff9e6;
        }

        tr:hover {
            background-color: #f3e5ab;
        }
    </style>
    </head>
    <body>
        <center>
        <h2>Staff List</h2>
         <table border="2" name="horizontal">
               <tr>
                   <tr>
                  <th>College Name</th>
                  <th>Department</th>
                  <th>Branch</th>
                  <th>Roll No</th>
                  <th>Student FName</th>
                  <th>Student LName</th>
                  <th>Admission Date</th>
                  <th>Year</th>
                  <th>Percentage</th>
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
                   <td><%=rs.getString(1)%></td>
                   <td><%=rs.getString(2)%></td>
                   <td><%=rs.getString(3)%></td>
                   <td><%=rs.getString(4)%></td>
                   <td><%=rs.getString(5)%></td>
                   <td><%=rs.getString(6)%></td>
                   <td><%=rs.getString(7)%></td>
                   <td><%=rs.getString(8)%></td>
                   <td><%=rs.getString(9)%></td>
                   <td><%=rs.getString(10)%></td>

                 </tr>
                <%
               }
                %>
                
           </table>
        </center>
    </body>
</html>
