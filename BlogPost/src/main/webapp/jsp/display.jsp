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
    <%@include file="header.html" %>

    <title>View</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src=https://code.jquery.com/jquery-1.12.4.js></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Veiw All Blogs</title>
</head>
<body align = "center">
<%--@elvariable id="blogPost" type="com.takeo.entity.BlogPost"--%>

<div class="/display">
    <h1>${blogPost.title}</h1>
    Id : ${blogPost.id}<br>
    Author : ${blogPost.author}<br>
    <div class="content">${blogPost.content}</div><br><br><br>

    Created Date :
    <jsp:useBean id="Date" class="java.util.Date" />
    <fmt:formatDate type="date" value="${blogPost.createdAt}"/>
    <br>
</div>
<br><br><br>
<form class="link" action="/add"><button class="btn button">Add New Blog</button></form>
</div>
<br><br>
<form action="/viewAll"> <button class="btn button">View All Blogs List</button></form>

</body>
</html>
