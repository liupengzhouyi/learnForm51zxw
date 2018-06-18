<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-18
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>了解Application内置对象</title>
</head>
<body>

    <%
        application.setAttribute("city","北京");
        application.setAttribute("pastcode", "10000");
        application.setAttribute("email","LIUPENG.0@outlook.com");
    %>

    <h1>
        <center>
            Application内置对象
        </center>
    </h1>

    <p>
        <center>
        <%
            Enumeration enumeration = application.getAttributeNames();
            while(enumeration.hasMoreElements()) {
                String name = enumeration.nextElement().toString();
                out.println(name + ": " + application.getAttribute(name));
            }
        %>
    </center>
    </p>

    JSP(SERVLET)引擎版本号：<%=application.getServerInfo()%>
</body>
</html>
