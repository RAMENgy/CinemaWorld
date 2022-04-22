<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시네마월드는</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">

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
<!-- 헤더가 들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 헤더가 들어가는 곳 -->

<!-- 본문 들어가는 곳 -->
<!-- 서브페이지 메인이미지 -->
<div id="main_img"><img src="../images/main_cine.jpg"
 width="971" height="282"></div>
<!-- 서브페이지 메인이미지 -->
<!-- 왼쪽메뉴 -->
<!-- <nav id="sub_menu">
<ul>
<li><a href="#">Welcome</a></li>
<li><a href="#">History</a></li>
<li><a href="#">Newsroom</a></li>
<li><a href="#">Public Policy</a></li>
</ul>
</nav> -->
<!-- 왼쪽메뉴 -->
<!-- 내용 -->
<article>
<h1>Welcome</h1>
<figure class="ceo"><img src="https://pbs.twimg.com/profile_images/1140882664594890753/wpSm3eFj_400x400.jpg" width="196" height="226" 
alt="CEO"><figcaption>귀여운 랫서팬더 보고가세요</figcaption>
</figure>
<p>
시네마 월드는 직관적이고 편리한 영화 정보 접근을 위해 고안된 사이트 입니다.<br><br>
메인 화면에서 필요한 주요 정보에 대부분 접근 가능하며<br><br>
필요에 따라 자체 게시판 게시글 열람 그리고 회원에 한해<br><br>
게시글 작성, 수정, 삭제가 가능합니다.<br><br>
<figcaption>당신의 영화를 즐기세요! 시네마 월드.</figcaption>

</p>
</article>
<!-- 내용 -->
<!-- 본문 들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터 들어가는 곳 -->
</div>
</body>
</html>



