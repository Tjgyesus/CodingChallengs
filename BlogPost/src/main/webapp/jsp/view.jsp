
<%--
  Created by IntelliJ IDEA.
  User: tsegaygebreyesus
  Date: 9/12/23
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--@elvariable id="blogPost" type="com.takeo.entity.BlogPost"--%>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../css/styles.css" rel="stylesheet" media="all" />
    <title>View Blog</title>
    <div class="topnav">
        <a href="/">Home</a>
        <a href="/add">Add Blog</a>
        <a class="active" href="/viewAll">View All Blogs</a>
    </div>
</head>
<body align="center">
<h3>Blog View</h3>
<table id="blogTab" class="table">
    <thead class="thead-dark">
    <tr>
        <th>Blog Id</th>

         <th>Title</th>
        <th>Author</th>
<%--        <th>Content</th>--%>

        <th>Created Date</th>


        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${blogPost}" var="blogPost">
        <tr>
        <td>${blogPost.id}</td>
            <td>    <a href="display?id=${blogPost.id}">${blogPost.title}</a></td>
            <td>${blogPost.author}</td>
<%--            <td>${blogPost.content}</td>--%>
            <td>${blogPost.createdAt}</td>

            <td><a href="editBlog?id=${blogPost.id}" class="buttonED E">Edit</a> </td>
        <td><a href="deleteBlog?id=${blogPost.id}" onclick="myfunction()" class="buttonED D">Delete</a> </td>
    </tr>
    </c:forEach>

    </tbody>
</table>
<br><br>
<form action="/add"/><button class="btn button">Add New Blog</button>
<br><br>
<script>
    function myfunction(){
        alert("Record Deleted");
    }
</script>
</body>
</html>