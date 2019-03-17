<%-- 
    Document   : UpdateForm
    Created on : 17 Mar, 2019, 12:40:17 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/crud" user="root" password="" />
        <sql:query dataSource="${db}" var="rs" >
            Select * from login where id=${param.id};
        </sql:query>
        <form action="http://localhost:8080/JstlCRUD/Updateop.jsp">
            <table>
                <c:forEach var="table" items="${rs.rows}" >
                    <input type="hidden" value="${table.id}" name="id"/>
                    <tr>
                        <td>Name</td>
                        <td>:</td>
                        <td><input type="text" value="${table.name}" name="name"/></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td>:</td>
                        <td><input type="text" value="${table.username}" name="username"/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>:</td>
                        <td><input type="text" value="${table.password}" name="password"/></td>
                    </tr>
                </c:forEach>
                <tr>
                    <td><input type="submit" value="update"></td>
                </tr>
            </table>
    </body>
</html>
