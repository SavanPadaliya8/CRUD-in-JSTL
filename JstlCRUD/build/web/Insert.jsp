<%-- 
    Document   : Insert
    Created on : 16 Mar, 2019, 3:27:32 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert</title>
    </head>
    <body>
        <form action="http://localhost:8080/JstlCRUD/Insertop.jsp">
            <table>
                <tr>
                    <td>Name</td>
                    <td>:</td>
                    <td><input type="text" name="name" ></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>:</td>
                    <td><input type="text" name="username" ></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>:</td>
                    <td><input type="text" name="password" ></td>
                </tr>
                <tr>
                    <td><input type="submit" ></td>
                </tr>
            </table>
        </form>
    </body>
</html>
