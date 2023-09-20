<%--
  Created by IntelliJ IDEA.
  User: tsegaygebreyesus
  Date: 9/11/23
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Display</title>
</head>
<body align = "center">

<div class="view">
<h1>Task </h1>
task Id : ${task.id}<br>
Title : ${task.title}<br>
Description : ${task.description}<br>
Completed : ${task.completed}<br>

<jsp:useBean id="Date" class="java.util.Date" />
Due Date :
<jsp:useBean id="date" class="java.util.Date" />
<fmt:formatDate type="date" value="${task.dueDate}"/>
</div>
<br><br>
<%--<a href="/createCargo" type="submit">Create New Cargo</a>    <input action = "/createCargo"  value="Add Cargo">--%>
<form action="/"><button class="btn button">Add New Task</button></form>
<br><br>
<form action="/viewAll"> <button class="btn button">View All Task List</button></form>

</body>
</html>
