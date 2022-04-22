<%@page import="board.BoardDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome, Cinema World</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/front.css" rel="stylesheet" type="text/css">

<!--[if lt IE 9]>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js" type="text/javascript"></script>
<script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/ie7-squish.js" type="text/javascript"></script>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
<![endif]-->

<!--[if IE 6]>
 <script src="../script/DD_belatedPNG_0.0.8a.js"></script>
 <script>
   /* EXAMPLE */
   DD_belatedPNG.fix('#wrap');
   DD_belatedPNG.fix('#main_img');   

 </script>
 <![endif]--> 


</head>
<body>
<div id="wrap">
<!-- 헤더파일들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>

<!-- 헤더파일들어가는 곳 -->
<!-- 메인이미지 들어가는곳 -->
<div class="clear"></div>
<div id="main_img"><img src="../images/main_cine.jpg"
 width="971" height="282"></div>
<!-- 메인이미지 들어가는곳 -->
<!-- 메인 콘텐츠 들어가는 곳 -->
<article id="front">
<div id="solution">
<div id="hosting">
<h3><a href="https://www.oscars.org" target="_blank">아카데미 바로가기</a></h3>
<p>미국의 가장 권위있는 영화 시상식<br>
오스카상 이라는
이름으로도 널리 알려져있는 전 세계에서 가장 유명한 시상식이다.</p>
</div>
<div id="security">
<h3><a href="https://www.biff.kr/kor" target="_blank">부산 국제 영화제 바로가기</a></h3>
<p>1996년 제 1회를 시작으로 지금까지 이어져오는, 대한민국 최대의
비경쟁 영화제로 BIFF로도 불린다.<br>
현재는 대한민국을 넘어 아시아를 대표하는 영화제 중 하나로 자리잡았다.
</p>
</div>
<div id="payment">
<h3>이 영화의 정보가 궁금해요!</h3>
 <form method="get" action="https://movie.daum.net/search" target="_blank">
<p>
 <input name="q" placeholder="영화 제목">
 <input type="submit" value="검색">
</p> 
 </form>
</div>
</div>
<div class="clear"></div>
<div id="sec_news">
<h3><span class="orange">영화 순위</span><br>롯데시네마 참조</h3>
<iframe src="https://www.lottecinema.co.kr/NLCMW/Movie/List?flag=1"
width="400" height="700">

</iframe>
<a href="https://www.lottecinema.co.kr/NLCMW/Movie/List?flag=1" target="_blank">크게보기</a>
</div>
<div id="news_notice">
<!-- <h3 class="brown">상영작 순위</h3> -->
<h3 class="brown">최근 게시글</h3>
<table>
<%
// 최근글 5개 출력
int pageSize=10;
int startRow=1;
// BoardDAO 객체생성
BoardDAO bDAO=new BoardDAO();
// List<BoardDTO> boardList=bDAO.getBoardList(startRow, pageSize); 호출
List<BoardDTO> boardList=bDAO.getBoardList(startRow, pageSize);
// 날짜 => 모양변경 => String 문자열 변경
SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy.MM.dd");
for(int i=0; i<boardList.size(); i++){
	BoardDTO bDTO=boardList.get(i);
	%>
	<tr><td class="contxt"><a href="../center/content.jsp?num=<%=bDTO.getNum()%>"><%=bDTO.getSubject() %></a></td>
	    <td><%=dateFormat.format(bDTO.getDate()) %></td></tr>
	<%
}
%>
</table>
<!-- <iframe src="https://movie.naver.com/movie/sdb/rank/rmovie.naver" -->
<!-- width="400" height="700"> -->

<!-- </iframe> -->
<!-- <a href="https://movie.naver.com/movie/sdb/rank/rmovie.naver" target="_blank">크게보기</a> -->
</div>
</article>
<!-- 메인 콘텐츠 들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>

<!-- 푸터 들어가는 곳 -->
</div>
</body>
</html>