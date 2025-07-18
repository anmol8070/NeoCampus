<%-- 
    Document   : check
    Created on : 3 Jul, 2025, 11:37:40 PM
    Author     : Anmol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student-Portal</title>
        <style>
        body {
            background: linear-gradient(to right, #43cea2, #185a9d);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        h2 {
            text-align: center;
            padding-top: 30px;
            color: #ffffff;
            text-shadow: 1px 1px 2px #000;
        }

        table {
            margin: 40px auto;
            border-collapse: collapse;
            width: 90%;
            background-color: rgba(255, 255, 255, 0.9);
            color: #333;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0,0,0,0.3);
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #ccc;
        }

        th {
            background-color: #2e7d32; 
            color: #fff;
            font-size: 16px;
        }

        tr:nth-child(even) {
            background-color: #e0f2f1;
        }

        tr:hover {
            background-color: #c8e6c9;
        }

        .message {
            text-align: center;
            padding: 30px;
            font-size: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            margin: 50px auto;
            width: 50%;
            border-radius: 12px;
            color: #d50000;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
    </style>
    </head>
    <body>
        <%
            if((session.getAttribute("username")== null) || (session.getAttribute("username")==" "))
            {
                %>
                <h1> Yor Are Not login</h1>
                <h2><a href="studentlogin.html"> Plzz Login</a></h2>
         <%
            }
             else
                 {
          %>
           <center>
          <h1> Welcome <%=session.getAttribute("username")%>
                
          <table border="1" cellpadding="30" cellspacing="20">
           <tr>
            <td align="center">
                <a href="bfetch.html">Search-Book</a>
            </td>
             <td align="center">
                <a href="query.html">Query</a>
            </td>
            </td>
             <td align="center">
                <a href="index.html">Logout</a>
            </td>
           </tr>
          </table>
              </center>
          <%
              }
          %>   
    </body>
</html>
