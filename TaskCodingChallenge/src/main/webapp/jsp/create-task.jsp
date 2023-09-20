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
    <title>Task</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src=https://code.jquery.com/jquery-1.12.4.js></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Welcome</title>
    </head>

<body align="center" class="">



<%--<-Date Script->--%>
<script>
    $(function() {
        $.datepicker.setDefaults({
            onClose:function(date, inst){
                $("#datepicker").html(date);
            }
        });
        $( ".datepicker" ).datepicker();
    });
    <%--<-Date Script->--%>

</script>

<h1>Task</h1>
<%--@elvariable id="task" type="com.takeo.entity.Task"--%>
<div class="input">
    <form:form action="task" modelAttribute="task" >
       <label> Title :</label>
            <form:input path="title" placeholder = "Title"/><br><br>
     <label>  Description :</label> <form:input path="description" placeholder = "Task Description" /><br><br>

    <label> Completed:  </label>
            <form:checkbox path="completed" value="completed"/><br><br>
        <label>Due Date :</label> <form:input type="text" class="datepicker" path="dueDate" placeholder = "MM/DD/YYYY"/><br><br>

        <button class="btn button" type="submit">Submit</button>
</form:form>
</div>
<br>
<form action="/viewAll"> <button class="btn button">View All Task List</button></form>

</body>
</html>
