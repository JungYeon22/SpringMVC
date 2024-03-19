<%--
  Created by IntelliJ IDEA.
  User: jungyeon
  Date: 2024-03-20
  Time: 오후 4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="http://localhost:8080/sum/result.do" method="get">
    <table>
        <tr>
            <th width="100">X</th>
            <td>
                <input type="text" name="x">
            </td>
        </tr>
        <tr>
            <th width="100">Y</th>
            <td>
                <input type="text" name="y">
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" name="계산">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
