<%-- 
   Document   : list
   Created on : Feb 25, 2020, 3:07:52 PM
   Author     : billy
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Student"%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>JSP Page</title>
       <%
           ArrayList<Student> students = (ArrayList<Student>)request.getAttribute("students");
       %>
       <%SimpleDateFormat SDF = new SimpleDateFormat("yyyy-MM-dd");%>
   </head>
   <body>
       <table border="1px"> 
           <tr>
               <td>ID</td>
               <td>Name</td>
               <td>DAO</td>
               <td>Gender</td>
               
               <td></td>
           </tr>
           <%for (Student s : students) {
               
           %>
           <%String date = SDF.format(s.getDOB());%>
           <tr>
               <td><%=s.getId() %></td>
               <td><%=s.getName()%></td>
               <td><%=date%></td>
               <td>
                   <%=s.getGender().equals("0")?"Male":"Female"%>
               </td>
               
               <td>
                   <a href="edit?id=<%=s.getId()%>">Edit</a>
                   <a href="#" onclick="deleteStudent(<%=s.getId()%>)">Delete</a>
               </td>
           </tr>
           <%}%>
       </table>
       
       <a href="index.html">Add</a>
       
   </body>
   <script>
       function deleteStudent(id){
           var option = confirm("Bạn có chắc chắn muốn xóa không ?");
           if(option === true){
               window.location.href = 'delete?id='+id;
           }
       }
   </script>
</html>