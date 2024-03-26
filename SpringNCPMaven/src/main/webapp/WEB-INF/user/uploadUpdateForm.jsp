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
  </style>
</head>
<body>
<a href="/"><img src="../image/Logo.png" width="30%"/></a>
<form method="post" enctype="multipart/form-data" action="/user/uploadUpdate">
  seq : <input type="text" id="seq" name="seq" value="${seq}" readonly>
  imageFileName : <input type="text" id="imageFileName"  readonly>
  <table border="1">
    <tr>
      <th>상품명</th>
      <td>
        <input type="text" id="imageName" name="imageName" size="35">
      </td>
    </tr>
    <tr>
      <td colspan="2">
        <textarea name="imageContent" id="imageContent" cols="50" rows="10"></textarea>
      </td>
    </tr>

    <tr>
      <td colspan="2">
        <input type="file" name="img[]" multiple="multiple">
      </td>
    </tr>

    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="이미지 업로드">
        <input type="button" id="deleteBtn" value="삭제하기">
      </td>
    </tr>

  </table>
</form>
<script src="https://code.jQuery.com/jquery-3.7.1.min.js"></script>
<script src="../js/uploadUpdate.js"></script>

</body>
</html>
