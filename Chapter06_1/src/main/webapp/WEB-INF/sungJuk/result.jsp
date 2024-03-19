<%--
  Created by IntelliJ IDEA.
  User: jungyeon
  Date: 2024-03-20
  Time: 오후 6:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<table border="1">
    <tr>
        <th colspan="2">**** ${sungJukDTO.name} 성적 ****</th>
    </tr>
    <tr>
        <th>총점 </th>
        <td>${sungJukDTO.tot}</td>
    </tr>
    <tr>
        <th>평균 </th>
        <td>${sungJukDTO.avg}</td>
    </tr>
</table>
</body>
</html>
