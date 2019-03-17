<%-- 
    Document   : Updateop
    Created on : 17 Mar, 2019, 12:45:26 PM
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
        <sql:update dataSource="${db}" var="rs">
         UPDATE login SET name=?, username=?, password=?
         WHERE id=?
         <sql:param value="${param.name}" />
         <sql:param value="${param.username}" />
         <sql:param value="${param.password}" />
         <sql:param value="${param.id}" />
      </sql:update>
        <c:redirect url="http://localhost:8080/JstlCRUD/Read.jsp" />
    </body>
</html>
