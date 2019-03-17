<%-- 
    Document   : Delete
    Created on : 17 Mar, 2019, 12:12:42 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
    <body>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/crud" user="root" password="" />
        <sql:update dataSource="${db}" var="rs" >
            Delete from login where id=${param.id};
        </sql:update>
        <c:redirect url="http://localhost:8080/JstlCRUD/Read.jsp" />
    </body>
</html>
