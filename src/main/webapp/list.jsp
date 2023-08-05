<%--
  Created by IntelliJ IDEA.
  User: cocomong_98
  Date: 2023/08/02
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.DAO.ListDAO" %>
<%@ page import="com.example.VO.ListVO" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>지역 거래 게시판</title>
</head>
<body>
    <%
    ListDAO listDAO = new ListDAO();
    String id=request.getParameter("id");

    List<ListVO> list = listDAO.listMember();
    request.setAttribute("list",list);
%>
    <h2>지역 내 거래 게시판입니다</h2>
    <table id="list" width="90%">
    <tr>
        <th>id</th>
        <th>카테고리</th>
        <th>제목</th>
        <th>글쓴이</th>
        <th>내용</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u" varStatus="status">
        <tr>
            <td>${u.getId()}</td>
            <td>${u.getCategory()}</td>
            <td>${u.getTitle()}</td>
            <td>${u.getWriter()}</td>
            <td>${u.getContent()}</td>
            <td><a href="edit.jsp?id=${u.getId()}">수정하기</a></td>
            <td><a href="delete.jsp?id=${u.getId()}">삭제하기</a></td>

        </tr>
    </c:forEach>
</table>

</body>
</html>
