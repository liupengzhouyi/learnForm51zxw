<%--
  Created by IntelliJ IDEA.
  User: liupe
  Date: 2018-06-17
  Time: 22:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>用户登陆</title>
  </head>
  <body>
  <h2>
    <center>
      用户登陆
    </center>
  </h2>

  <form action="/Login" method="post">
    <center>
      <table>
        <tr>
          <td align="center">用户名</td>
          <td><input type="text" name="username"></td>
        </tr>
        <tr>
          <td align="center">密码</td>
          <td><input type="password" name="password"></td>
        </tr>
        <tr>
          <td align="center"><input type="submit" value="提交"></td>
        </tr>
      </table>
    </center>
  </form>
  </body>
</html>
