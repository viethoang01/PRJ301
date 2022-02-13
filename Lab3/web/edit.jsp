<%-- 
    Document   : edit
    Created on : Feb 13, 2022, 1:21:49 PM
    Author     : Administrator
--%>

<%@page import="model.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%Student studentObj =(Student) request.getAttribute("studentObj");%>
        <%SimpleDateFormat SDF = new SimpleDateFormat("yyyy-MM-dd");%>
    </head>
    <body>
        <body>
            
        <form action="edit" method="post">
            <table>
                <tr>Id:<input type="text" name="id" value="<%=studentObj.getId()%>" readonly/></tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" value="<%=studentObj.getName()%>"/></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <% 
                        if(studentObj.getGender().equals("0")){
                            request.setAttribute("maleChecked", "checked");
                            
                    }else{
                           request.setAttribute("femaleChecked", "checked"); 
                    }%>
                    <td><input type="radio" value="male" name="gender" <%= request.getAttribute("maleChecked")%> />Male 
                        <input type="radio" value="female" name="gender" <%= request.getAttribute("femaleChecked")%> />Female</td>
                    
                    
                </tr>
                <tr>
                    <td>DOB:</td>
                    <td><input type="text" name="dob" value="<%=SDF.format(studentObj.getDOB()) %>"/></td>
                </tr>
                <tr><td><button>Edit</button></td></tr>
            </table>
        </form>
    </body>
</html>
