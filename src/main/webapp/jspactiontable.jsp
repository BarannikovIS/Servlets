<%-- 
    Document   : jspactiontable
    Created on : 06.02.2016, 19:08:00
    Author     : Иван
--%>

<%@page import="java.util.List"%>
<%@page import="netcracker.servlets.Action"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <c:forEach var="action" items="${listJspActions}">
                <tr>
                    <td>
                        ${action.getSyntax()}
                    </td>
                    <td>
                        ${action.getPurpose()}
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
