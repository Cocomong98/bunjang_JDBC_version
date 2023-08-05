<%--
  Created by IntelliJ IDEA.
  User: cocomong_98
  Date: 2023/08/04
  Time: 4:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.example.DAO.ListDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product 수정 결과</title>
</head>
<body>
<%
    // 파라미터 받아오기
    int id = Integer.parseInt(request.getParameter("id"));
    String category = request.getParameter("category");
    String title = request.getParameter("title");
    String writer = request.getParameter("writer");
    String content = request.getParameter("content");

    // ListDAO 인스턴스 생성
    ListDAO listDAO = new ListDAO();

    // ListDAO를 사용하여 데이터베이스에 정보 업데이트
    listDAO.updateProduct(id, category, title, writer, content);

    response.sendRedirect("list.jsp");
%>
</body>
</html>

