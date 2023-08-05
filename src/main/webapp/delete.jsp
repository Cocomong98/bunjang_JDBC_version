<%--
  Created by IntelliJ IDEA.
  User: cocomong_98
  Date: 2023/08/04
  Time: 4:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.DAO.ListDAO" %>
<%@ page import="com.example.VO.ListVO" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));

    // ListDAO 인스턴스 생성
    ListDAO listDAO = new ListDAO();

    // ListDAO를 사용하여 데이터베이스에서 정보 삭제
    listDAO.deleteProduct(id);

    response.sendRedirect("list.jsp");
%>