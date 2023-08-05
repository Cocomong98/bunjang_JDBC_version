<%--
  Created by IntelliJ IDEA.
  User: cocomong_98
  Date: 2023/07/26
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>서울지역보관함</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <style type="text/css">
    div.question-box {
      margin: 10px 0 20px 0;
    }

    table {
      border: 1px solid beige;
      border-collapse: collapse;
    }

    td,
    th {
      padding: 10px;
      border: 1px solid blue;
    }
    #thead{
      background-color: cornflowerblue;
      color: black;
      font-weight: bold;
    }
    #box {
    }
    #update_btn {
      margin: 0 auto;
    }
  </style>
</head>
<body>
<h1>서울시 안심보관함 현황</h1>

<hr />

<div class="question-box">
  <p>현재 서울시 내의 안심택배보관함 위치입니다 (업데이트 버튼을 누르시면 지속적으로 갱신됩니다)</p>
  <button id="update_btn" onclick="q1()">업데이트</button>
  <br><br>
  <table id="box">
    <thead id="thead">
    <tr>
      <td>택배보관함 건물 이름</td>
      <td>택배보관함 주소</td>
    </tr>
    </thead>
    <tbody id="names-q1">
    <tr>
      <td>현동홀</td>
      <td>1층 보관함</td>
    </tr>
    <tr>
      <td>학관 후문</td>
      <td>무인보관함</td>
    </tr>
    <tr>
      <td>벧엘관</td>
      <td>택배보관함</td>
    </tr>
    </tbody>
  </table>
</div>

<script>
  function q1() {
    $.ajax({
      type: "GET",
      url: "http://openapi.seoul.go.kr:8088/sample/xml/safeOpenBox/1/5/",
      data: {},
      dataType: "xml", // XML 파일 형식으로 받아온다는 뜻
      success: function(response) {
        $("#names-q1").empty()

        // XML 데이터 사용 ( JSON과는 다름 )
        let box_list = $(response).find("row");
        box_list.each(function() {
          let name_stat = $(this).find("ANSIMINM").text();
          let rack_cnt = $(this).find("ANSIMIADDR").text();

          let tr_box = `<tr>
                                            <td>${name_stat}</td>
                                            <td>${rack_cnt}</td>
                                    </tr>`

          $("#names-q1").append(tr_box)
        });
      }
    })
  }
</script>

</body>
</html>
