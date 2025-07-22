<%-- 
    Document   : logout.jsp
    Created on : 4 Jul, 2025, 12:53:37 PM
    Author     : Anmol
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("username",null);
            session.invalidate();
            response.sendRedirect("index.html");
            %>
    </body>
</html>
