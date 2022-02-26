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
            <%
                Cookie[] cookie = request.getCookies();
                boolean check = false;
        if (cookie != null) {
            for (Cookie cookie1 : cookie) {
                
                if (cookie1.getName().equals("detail")) {
                    check = true;
                    %>
                    <h4>Hello: <%=cookie1.getValue()%></h4>
            <%

                }

            }
            
        } if(!check) {
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
            %>
           
    </body>
</html>
