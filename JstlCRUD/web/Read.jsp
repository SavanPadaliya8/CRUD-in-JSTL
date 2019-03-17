<%-- 
    Document   : Read
    Created on : 17 Mar, 2019, 11:06:03 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read</title>
    </head>
    <body>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/crud" user="root" password="" />
        <sql:query dataSource="${db}" var="rs" >
            Select * from login;
        </sql:query>
        
            <form action="http://localhost:8080/JstlCRUD/Insert.jsp">
                <table>
                    <tr>
                        <td>Name</td>
                        <td>Username</td>
                        <td>Password</td>
                    </tr>
                    <c:forEach var="table" items="${rs.rows}">
                        <tr>
                            <td><c:out value="${table.name}" /></td>
                            <td><c:out value="${table.username}" /></td>
                            <td><c:out value="${table.password}" /></td>
                            <c:url value="http://localhost:8080/JstlCRUD/Delete.jsp" var="URL">
                                <c:param name="id"   value="${table.id}" />
                            </c:url>
                            <td><a href='<c:out value="${URL}" />'>Delete</a></td>
                            <c:url value="http://localhost:8080/JstlCRUD/UpdateForm.jsp" var="URL">
                                <c:param name="id"   value="${table.id}" />
                                <c:param name="name"   value="${table.name}" />
                                <c:param name="username"   value="${table.username}" />
                                <c:param name=""   value="${table.password}" />
                            </c:url>
                            <td><a href='<c:out value="${URL}" />'>Edit</a></td>
                        </tr>
                    </c:forEach>
                        <tr>
                            <td><input type="submit" value="Insert" ></td>
                        </tr>
                </table> 
            </form>
    </body>
</html>
