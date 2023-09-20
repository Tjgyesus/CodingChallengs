<%--
  Created by IntelliJ IDEA.
  User: tsegaygebreyesus
  Date: 9/11/23
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"
%>
<html>
<head>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src=https://code.jquery.com/jquery-1.12.4.js></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Task Edit</title>
</head>

<body align = "center">

<script>
    $(function() {
        $.datepicker.setDefaults({
            onClose:function(date, inst){
                $("#datepicker").html(date);
            }
        });
        $( ".datepicker" ).datepicker();
    });
</script>

<h1>Task Edit</h1>
<%--@elvariable id="task" type="com.takeo.entity.Task"--%>

    <form:form action="update" modelAttribute="task" align="center">
        <form:hidden path="id"/>
   Title : <form:input path="title"/><br><br>
    Description: <form:input path="description"/><br><br>

    Completed :  <form:checkbox path="completed"/><br><br>


    Due Date :  <form:input type="text" class="datepicker" path="dueDate"/><br><br>

        <button class="btn button">Edit Task</button>

</form:form>
<br><br>
<form action="/viewAll"/> <button class="btn button">View All Task List</button></form>

</body>
</html>
