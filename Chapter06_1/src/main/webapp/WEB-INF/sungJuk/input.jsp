<%--
  Created by IntelliJ IDEA.
  User: jungyeon
  Date: 2024-03-20
  Time: 오후 6:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        form{
            text-align: center;
        }
    </style>
</head>
<body>
<form  method="post" action="/sungJuk/result.do">
    <table>
        <tr>
            <th>이름</th>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <th>국어</th>
            <td><input type="text" name="kor"></td>
        </tr>
        <tr>
            <th>영어</th>
            <td><input type="text" name="eng"></td>
        </tr>
        <tr>
            <th>수학</th>
            <td><input type="text" name="math"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="게산하기"></td>
        </tr>
    </table>
</form>
</body>
</html>
