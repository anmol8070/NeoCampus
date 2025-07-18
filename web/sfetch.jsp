<%-- 
    Document   : sfetch
    Created on : 3 Jul, 2025, 11:08:37 AM
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
         <style>
        body {
            background-color: #e3f2fd;
            font-family: Arial, sans-serif;
        }

        h2 {
            text-align: center;
            color: #1976d2;
        }

        table {
            margin: 30px auto;
            border-collapse: collapse;
            width: 90%;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.15);
        }

        th, td {
            padding: 10px;
            border: 1px solid #90caf9;
            text-align: center;
        }

        th {
            background-color: #1976d2;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #e3f2fd;
        }

        .not-found {
            text-align: center;
            color: red;
            margin-top: 50px;
            font-size: 20px;
        }
    </style>
    </head>
    
    <%
        String n1=request.getParameter("n1");
        String n2=request.getParameter("n2");
        
        Class.forName("oracle.jdbc.driver.OracleDriver");   
         
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        Statement stmt=con.createStatement();
                
        ResultSet rs=stmt.executeQuery("SELECT * FROM student WHERE branch='"+n1+"'AND roll_no ='"+n2+"'");
        if(rs.next())
        {
    %>
         <table border="2" name="horizontal">
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
                 </table>
              <%
               }
               else
                   {
                    out.print("<h1>Student not found data Missmatch<h1>");
                   }
             %>
                
         </body>
</html>
