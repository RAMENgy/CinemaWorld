<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete.jsp</title>
</head>
<body>
<%
//서버 request에 저장 num 가져오기
int num=Integer.parseInt(request.getParameter("num"));
BoardDAO bDAO=new BoardDAO();

bDAO.deleteBoard(num);

response.sendRedirect("notice.jsp");
%>
</body>
</html>
