<%-- 
    Document   : Insertop
    Created on : 16 Mar, 2019, 6:36:57 PM
    Author     : DELL
--%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert</title>
        
    </head>
    <body>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/crud" user="root" password="" />
        <sql:update dataSource="${db}" var="rs" >
            Insert into login (name,username,password) values ('${param.name}','${param.username}','${param.password}');
        </sql:update>
        <c:redirect url="http://localhost:8080/JstlCRUD/Read.jsp" />
    </body>
</html>
