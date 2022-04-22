<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이달의 추천작</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="wrap">
<jsp:include page="../inc/top.jsp"></jsp:include>
<div id="main_img"><img src="../images/main_cine.jpg"
 width="971" height="282"></div>
<%
//  http://localhost:8080/JspStudy/jsp5/content.jsp?num=1
//  http://localhost:8080/JspStudy/jsp5/content.jsp?num=2
// 서버 request에 저장
int num=Integer.parseInt(request.getParameter("num"));
// BoardDAO 객체생성
BoardDAO bDAO=new BoardDAO();
//조회수 1증가  update board set readcount=readcount+1 where num=?
// 리턴할값없음 updateReadcount(int num) 메서드 정의
// updateReadcount(num)메서드 호출
bDAO.updateReadcount(num);

// BoardDTO 리턴할형 getBoard(int num)메서드 정의
// BoardDTO bDTO=  getBoard(num) 메서드 호출
BoardDTO bDTO=bDAO.getBoard(num);
	%>

<table border="1" id="table_content" class="tct" width="80%" >
<tr><th>글번호</th><td><%=bDTO.getNum() %></td>
     <th>작성일</th><td><%=bDTO.getDate() %></td></tr>
<tr><th>작성자</th><td><%=bDTO.getName() %></td>
    <th>조회수</th><td><%=bDTO.getReadcount() %></td></tr>
<tr><th>제목</th><td colspan="3"><%=bDTO.getSubject() %></td></tr>
<tr><th>첨부파일</th> 
	<td colspan="3">
<%-- 	<a href="../upload/<%=bDTO.getFile() %>" download><%=bDTO.getFile()%></a> --%>
	<img src="../upload/<%=bDTO.getFile() %>">
	</td></tr>
<tr height="800"><th>내용</th><td colspan="3" ><%=bDTO.getMovie() %></td></tr>
</table>	

<%
// 세션값 가져오기
String id=(String)session.getAttribute("id");
// 세션값이 있으면 
// 세션값(로그인)과  글쓴이 일치하면 
if(id!=null){
if(id.equals("admin")){
	if(id.equals(bDTO.getName())){
		%>
<input type="button" value="글수정" class="btn" onclick="location.href='update.jsp?num=<%=bDTO.getNum()%>'">
<input type="button" value="글삭제" class="btn" onclick="location.href='delete.jsp?num=<%=bDTO.getNum()%>'">
	
		<%
	}
}
}
%>
<input type="button" value="글목록" class="btn" onclick="location.href='movie.jsp'">
<jsp:include page="../inc/bottom.jsp"></jsp:include>
</div>
</body>
</html>

