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
<html>
<head>
    <%@include file="header.html" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../css/styles.css" rel="stylesheet" media="all" />
    <title>Edit</title>
</head>
<body>
<%--@elvariable id="blogPost" type="com.takeo.entity.BlogPost"--%>
<form:form action="update" modelAttribute="blogPost">
    <form:hidden path="id"/>
    TITLE : <form:input path="title"/><br><br>
    AUTHOR : <form:input path="author"/><br><br>
    CONTENT : <form:input path="content"/><br><br>
    <div class="link" >
        <form action="/editBlog"/><button class="btn button">Edit Blog</button>
    </div>
</form:form>
<br><br>
<form action="/viewAll"> <button class="btn button">View All Blogs</button></form>

</body>
</html>
