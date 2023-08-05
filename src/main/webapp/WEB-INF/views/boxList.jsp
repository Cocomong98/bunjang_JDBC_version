<%--
  Created by IntelliJ IDEA.
  User: cocomong_98
  Date: 2023/07/26
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title>전국 택배보관함</title>
    <link rel="stylesheet" type="text/css" href="${context}/static/css/style.css">
</head>

<body>

<h1>원하는 지역을 선택하세요</h1>
<br>


<h3>특별시, 광역시</h3>
<hr />

<div class="boxLocations">
    <div class="boxLoca_detail">
        <h2>서울</h2>
        <a href="/seoulBox">조회</a>
    </div>

    <div class="boxLoca_detail">
        <h2>부산</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>대구</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>인천</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>광주</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>대전</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>울산</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>
</div>
<br>

<h3>도</h3>
<hr />

<div class="boxLocations">
    <div class="boxLoca_detail">
        <h2>경기도</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>강원도</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>충청북도</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>충청남도</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>전라북도</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>전라남도</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>경상북도</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>경상남도</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>

    <div class="boxLoca_detail">
        <h2>제주특별자치도</h2>
        <button class="login" onclick="window.open('seoulBox.html')">조회</button>
    </div>
</div>


</body>
</html>
