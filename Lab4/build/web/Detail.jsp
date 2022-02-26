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
            Users u = (Users) session.getAttribute("user");
            if(u != null){%>
                <h4>Hello: <%=u.getDisplayname()%></h4>
               
            <%}else{
                response.sendRedirect("loginServlet");
            }
            
        
            %>
           
    </body>
</html>
