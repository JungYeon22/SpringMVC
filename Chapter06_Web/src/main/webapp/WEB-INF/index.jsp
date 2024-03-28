<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        /* 메뉴 리스트 스타일 */
        .menu {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: flex;
        }

        /* 메뉴 아이템 스타일 */
        .menu-item {
            margin-right: 20px;
            border: 1px solid #ccc; /* 테두리 추가 */
            padding: 5px 10px; /* 내부 여백 추가 */
        }

        /* 링크 스타일 */
        .menu-item a {
            text-decoration: none;
            color: #333;
            transition: color 0.3s ease;
        }

        /* 링크 호버 스타일 */
        .menu-item a:hover {
            color: #ff6347; /* 호버 시 색 변경 */
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
    <h1>*** 메인 화면 ***</h1>
    <br/>
    Hello Jung Yeon Park!!
    <div>
        <div class="menu"><div class="menu-item"><a href="/Chapter06_Web/user/writeForm">입력</a></div></div>
        <div class="menu"><div class="menu-item"><a href="/Chapter06_Web/user/list">출력</a></div></div>
        <br>
        <div class="menu"><div class="menu-item"><a href="/Chapter06_Web/user/uploadForm">파일 업로드</a></div></div>
        <div class="menu"><a class="menu-item" href="/Chapter06_Web/user/uploadForm_AJax">파일 업로드_AJax</a></div>
        <br>
        <div class="menu"><div class="menu-item"><a href="/Chapter06_Web/user/uploadList">이미지 출력</a></div></div>
    </div>
</div>

</body>
</html>