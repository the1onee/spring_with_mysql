<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.spr.don.Student" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <meta http-equiv="Content-Type"
          content="text/html; charset=ISO-8859-1">
    <title>User Registration</title>
</head>
<body>
<%
    List<Student> datalst=(List<Student>)request.getAttribute("data");
    for (int c=0;c<datalst.size();c++){
        out.print("ID "+ datalst.get(c).getStudentname());


    }
%>
<form action="/save">
    <label>First name:</label>
    <input type="text" name="studentname"><br>
    <label >Input Address:</label>
    <input type="text"  name="course"><br>
    <input type="submit" value="save">
</form>

</body>
</html>