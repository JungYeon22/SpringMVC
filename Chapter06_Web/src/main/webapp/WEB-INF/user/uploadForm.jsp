<%--
  Created by IntelliJ IDEA.
  User: jungyeon
  Date: 2024-03-22
  Time: 오후 3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        th, td{
            padding: 10px;
        }
        body{
            text-align: center;
        }
        /* 실제 컨텐츠를 포함하는 컨테이너 요소 */
        .container {
            display: inline-block;
            vertical-align: middle;
            text-align: left; /* 컨텐츠의 가로 정렬을 왼쪽으로 */
        }
    </style>
</head>
<body>
<div class="container">
    <a href="/Chapter06_Web/"><img src="../image/Logo.png" width="30%"/></a>
<form method="post" enctype="multipart/form-data" action="/Chapter06_Web/user/upload">
    <table border="1">
        <tr>
            <th>상품명</th>
            <td>
                <input type="text" name="imageName" size="35">
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <textarea name="imageContent" id="imageContent" cols="50" rows="10"></textarea>
            </td>
        </tr>

        <%-- 다중 업로드 할때에는 name속성의 이름이 같아야한다. --%>
 <%--       <tr>
            <td colspan="2">
                <input type="file" name="img" >
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="file" name="img" >
            </td>
        </tr>
--%>
        <%--한번에 1개 이상 선택 --%>
        <tr>
            <td colspan="2">
                <input type="file" name="img[]" multiple="multiple">
            </td>
        </tr>



        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="이미지 업로드">
                <input type="reset" value="취소">
            </td>
        </tr>


    </table>
</form>
</div>
</body>
</html>
