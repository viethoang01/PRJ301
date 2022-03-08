<%-- 
    Document   : Paging
    Created on : Mar 7, 2022, 6:16:14 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" style="width: 500px;text-align: center">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="i" items="${lp}">
                    <tr>
                        <td>${i.id}</td>
                        <td>${i.name}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>



        <c:forEach begin="1"  end="${totalPage}"varStatus="i">
            <a href="person?index=${i.index}">${i.index}</a>
        </c:forEach>
    </body>
</html>
