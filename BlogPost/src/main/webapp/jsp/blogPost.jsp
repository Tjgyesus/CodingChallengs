<%--
  Created by IntelliJ IDEA.
  User: tsegaygebreyesus
  Date: 9/12/23
  Time: 1:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri = "http://www.springframework.org/tags/form"
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>

    <title>Blog</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src=https://code.jquery.com/jquery-1.12.4.js></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome</title>
    <div class="topnav">
        <a href="/">Home</a>
        <a class="active" href="/inserted">Add Blog</a>
        <a href="/viewAll">View All Blogs</a>
    </div>
</head>
<body align="center">
<%--@elvariable id="blogPost" type="com.takeo.entity.BlogPost"--%>
<h2>${msg}</h2>

<form:form action="inserted" modelAttribute="blogPost">
    TITLE : <form:input path="title"/><br><br>
    AUTHOR : <form:input path="author"/><br><br>
    CONTENT : <form:textarea path="content" rows="5" cols="53"/><br><br>
    <button class="btn button">Add New Blog</button>
</form:form>
<br><br>
<form action="/viewAll"> <button class="btn button">View All Blogs List</button></form>


</body>
</html>
