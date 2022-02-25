<%-- 
    Document   : Detail
    Created on : Feb 23, 2022, 4:45:14 PM
    Author     : Administrator
--%>

<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%if(request.getAttribute("nameDetail") == null) response.sendRedirect("detail");%>
            <h3>Hello: <%=request.getAttribute("nameDetail")%></h3>
    </body>
</html>
