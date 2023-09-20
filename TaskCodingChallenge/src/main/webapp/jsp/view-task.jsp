
<%--
  Created by IntelliJ IDEA.
  User: tsegaygebreyesus
  Date: 9/12/23
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--@elvariable id="task" type="com.takeo.entity.Task"--%>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Task List View</title>

</head>
<body align="center">

<h1>Task List Display</h1><br>
<table id="taskTab" class="table" align="center" style="font-size: 20px">
    <thead class="thead-dark">
    <tr>
       <th>Id</th>
        <th>Title</th>
        <th>Description</th>
        <th> Completed</th>
        <th> Due Date </th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${task}" var="task">
        <tr>
        <td>${task.id}</td>
        <td>${task.title}</td>
        <td>${task.description}</td>
            <td>${task.completed}</td>
            <td>
                <jsp:useBean id="date" class="java.util.Date" />
                <fmt:formatDate type="date" value="${task.dueDate}"  pattern="dd-MM-yyyy"/>
            </td>
        <td><a href="editTask?id=${task.id}" class="buttonED E" >Edit</a> </td>
        <td><a href="deleteTask?id=${task.id}" class="buttonED D" onclick="myfunction()">Delete</a> </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<br><br>
<form action="/"/><button class="btn button">Add New Task</button>
<script>
    function myfunction(){
        alert("Record Deleted");
    }
</script>
</body>
</html>