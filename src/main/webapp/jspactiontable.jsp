<%-- 
    Document   : jspactiontable
    Created on : 06.02.2016, 19:08:00
    Author     : Иван
--%>

<%@page import="java.util.List"%>
<%@page import="netcracker.servlets.Action"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jsp action table</title>
    </head>

    <body>
        <h1>Jsp action table</h1>
        <table border="1px">
            <tr>
                <td>Syntax</td>
                <td>Purpose</td>
            </tr>
            <%
                List<Action> listJspActions =  (List<Action>)request.getAttribute("listJspActions");
                for (int i = 0; i < listJspActions.size(); i++) {
            %>
            <tr>
                <td>
                    <%=listJspActions.get(i).getSyntax()%>
                </td>
                <td>
                    <%=listJspActions.get(i).getPurpose()%>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
