<%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-18
  Time: 22:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>被跳转页</title>
</head>
<body>
    <center>
        SeesionID的值：<%=session.getId()%>
        <br>
        Seesion中获取用户名：<%=session.getAttribute("username")%>
    </center>
</body>
</html>
