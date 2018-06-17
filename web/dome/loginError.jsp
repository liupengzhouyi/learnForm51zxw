<%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-18
  Time: 00:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>出错页面</title>
</head>
<body>
    <h1>
        <center>
            错误页面
        </center>
    </h1>
    <%=request.getAttribute("errorMessage")%>
</body>
</html>
