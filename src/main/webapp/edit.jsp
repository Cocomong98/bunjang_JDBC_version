<%--
  Created by IntelliJ IDEA.
  User: cocomong_98
  Date: 2023/08/04
  Time: 4:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.DAO.ListDAO" %>
<%@ page import="com.example.VO.ListVO" %>
<%@ page import="java.util.List" %>

<%
    // list.jsp에서 id를 사용해 호출했으므로 id를 사용함
    int id = Integer.parseInt(request.getParameter("id"));

    // 받아온 id를 사용해 bunjang 테이블에서 정보 불러오기
    ListDAO listDAO = new ListDAO();
    ListVO item = listDAO.getProductById(id);
%>

<html>
<head>
    <title>상품 수정하기</title>
</head>
<body>
<h1>상품 수정하기</h1>
<form action="${pageContext.request.contextPath}/update.jsp" method="post">

    <input type="hidden" name="id" value="<%= item.getId() %>">
    <table>
        <tr><td>카테고리:</td><td><input type="text" name="category" value="<%= item.getCategory() %>"/></td></tr>
        <tr><td>제목:</td><td><input type="text" name="title" value="<%= item.getTitle() %>"/></td></tr>
        <tr><td>글쓴이:</td><td><input type="text" name="writer" value="<%= item.getWriter() %>"/></td></tr>
        <tr><td>내용:</td><td><textarea cols="50" rows="5" name="content"><%= item.getContent() %></textarea></td></tr>
    </table>

    <button value="수정하기">수정하기</button>
</form>
</body>
</html>
