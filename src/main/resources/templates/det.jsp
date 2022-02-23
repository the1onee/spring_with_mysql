<%@ page import="java.util.List" %>
<%@ page import="com.spr.don.Student" %>
<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <title></title>

</head>

<body>

<%
    List<Student> datalst=(List<Student>)request.getAttribute("data");
    for (int c=0;c<datalst.size();c++){
        out.print("ID "+ datalst.get(c).getStudentname());


    }
%>

</body>

</html>