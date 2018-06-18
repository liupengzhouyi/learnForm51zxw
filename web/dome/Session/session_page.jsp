<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-18
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Seesion对象</title>
</head>
<body>
    <h1>
        <center>
            session对象
        </center>
    </h1>
    <hr>
    <p>
        <center>
        <%
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");

            Date date = new Date(session.getCreationTime());

            session.setAttribute("username","liupeng");

            //设置session最大的存在期限[30天]
            //session.setMaxInactiveInterval(60*60*24*30);
        %>
        Session对象创建时间：<%=date.toString()%>
        <br>
        SeesionID的值：<%=session.getId()%>
        <br>
        Seesion中获取用户名：<%=session.getAttribute("username")%>
    </center>
    </p>

    <p>
        <center>
        <a href="session_page2.jsp" target="_blank">跳转到SeesionPage2</a>
    </center>
    </p>

    <h2>
       <center>
           Seesion中保存的属性：
           <br>
           <%
               String[] names = session.getValueNames();
               for (int i=0; i<names.length; i++) {
                   out.println("        " + names[i]);
               }
           %>
       </center>
    </h2>
</body>
</html>
