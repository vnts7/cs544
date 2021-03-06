<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Book list</title>
</head>

<body>
<h1>Book list</h1>
<table>
    <c:forEach var="i" items="${list}">
        <tr>
            <td>${i.title}</td>
            <td>${i.ISBN}</td>
            <td>${i.author}</td>
            <td>${i.price}</td>
            <sec:authorize access="hasRole('ADMIN')">
                <td><a href="book/d/${i.id}">edit</a></td>
            </sec:authorize>

        </tr>
    </c:forEach>
</table>
<sec:authorize access="hasRole('ROLE_ADMIN')">
    <a href="book/add"> Add a Book</a>
</sec:authorize>
<br>
<a href="logout">Logout</a>
</body>

</html>