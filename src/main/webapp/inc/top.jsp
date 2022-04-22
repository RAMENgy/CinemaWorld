
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>
<%
// 로그인 여부 확인 => 세션값 유무 확인
// 세션값 가져오기
String id=(String)session.getAttribute("id");

// 로그인 한 경우 ...님 logout update
// 로그인 하지 않은 경우 login join

if(id==null){
	// 세션값 없음, 로그인 하지 않음 login join
	%>
	<div id="login"><a href="../member/login.jsp">login</a> |
					<a href="../member/join.jsp">join</a></div>
	<% 
} else {
	// 세션값 있음, 로그인 함 logout update
	%>
	<div id="login"><%=id %>님 로그인 중 |
					<a href="../member/logout.jsp">logout</a> |
					<a href="../member/update.jsp">update</a></div>
	<% 
}
%>
<div class="clear"></div>
<!-- 로고들어가는 곳 -->
<div id="logo"><a href="../main/main.jsp"><img src="../images/cine-logo2.png" width="265" height="62" alt="Fun Web"></a></div>
<!-- 로고들어가는 곳 -->
<nav id="top_menu">
<ul>
	<li><a href="../main/main.jsp">홈으로</a></li>
	<li><a href="../company/welcome.jsp">시네마월드는</a></li>
	<li><a href="../center/movie.jsp">이달의 추천작</a></li>
	<li><a href="../center/notice2.jsp">게시판</a></li>
	<li><a href="../center/contact.jsp">CONTACT US</a></li>
</ul>
</nav>
</header>