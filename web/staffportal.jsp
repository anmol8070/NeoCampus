<%-- 
    Document   : staffportal
    Created on : 4 Jul, 2025, 2:03:50 PM
    Author     : Anmol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
            text-align: center;
        }

        h1, h2 {
            margin-bottom: 20px;
            color: #0d47a1;
        }

        table {
            margin: 20px auto;
            border-collapse: separate;
            border-spacing: 20px;
        }

        td {
            padding: 15px;
        }

        a {
            display: inline-block;
            text-decoration: none;
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border-radius: 8px;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #0056b3;
        }

        .error {
            text-align: center;
        }

        .error a {
            background-color: #e53935;
            padding: 8px 16px;
            border-radius: 6px;
        }

        .error a:hover {
            background-color: #b71c1c;
        }
    </style>
</head>
<body>
<%
    String username = (String) session.getAttribute("username");

    if (username == null || username.trim().equals("")) {
%>
    <div class="container error">
        <h1>You are not logged in</h1>
        <h2><a href="stafflogin.html">Please Login</a></h2>
    </div>
<%
    } else {
%>
    <div class="container">
        <h1>Welcome, <%= username %></h1>
        <table>
            <tr>
                <td><a href="studentoption.html">Student</a></td>
                <td><a href="bookOption.html">Book</a></td>
                <td><a href="query.html">Query</a></td>
                <td><a href="viewAllQuery.jsp">All Query</a></td>
                <td><a href="index.html">Logout</a></td>
            </tr>
        </table>
    </div>
<%
    }
%>
</body>
</html>