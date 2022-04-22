<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
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
<!-- 헤더들어가는 곳 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- 헤더들어가는 곳 -->

<!-- 본문들어가는 곳 -->
<!-- 본문메인이미지 -->
<div id="main_img"><img src="../images/main_cine.jpg"
 width="971" height="282"></div>
<!-- 본문메인이미지 -->
<!-- 왼쪽메뉴 -->
<nav id="sub_menu">
<ul>
<li><a href="#">Join us</a></li>
<li><a href="#">Privacy policy</a></li>
</ul>
</nav>
<!-- 왼쪽메뉴 -->
<!-- 본문내용 -->
<%
// 세션값 가져오기
String id = (String)session.getAttribute("id");
// MemberDAO 객체생성
MemberDAO mDAO = new MemberDAO();
// MemberDTO 리턴할형 getMember(String id)

// 리턴값 저장할 변수 MemberDTO mDTO = getMember(id) 메서드 호출
MemberDTO mDTO = mDAO.getMember(id);
%>
<article>
<h1>이름 / 이메일만 수정 가능합니다.</h1>
<form action="updatePro.jsp" id="join" method="post">
<fieldset>
<legend>Basic Info</legend>
<label>ID</label>
<input type="text" name="id" class="id" value=<%=id %> readonly>
<input type="button" value="dup. check" class="dup"><br>
<label>비밀번호</label>
<input type="password" name="pass"><br>
<label>이름</label>
<input type="text" name="name" value=<%=mDTO.getName() %>><br>
<label>이메일</label>
<input type="email" name="email" value=<%=mDTO.getEmail() %>><br>
</fieldset>

<fieldset>
<legend>Optional</legend>
<label>우편 번호</label>
<input type="text" name="addressno" value=<%=mDTO.getAddressno() %>><br>
<label>주소</label>
<input type="text" name="address" value="<%=mDTO.getAddress() %>"><br>
<label>상세주소</label>
<input type="text" name="address2" value=<%=mDTO.getAddress2() %>><br>
<label>전화 번호</label>
<input type="text" name="phone" value=<%=mDTO.getPhone() %>><br>
<label>휴대전화 번호</label>
<input type="text" name="mobile" value=<%=mDTO.getMobile() %>><br>
</fieldset>
<div class="clear"></div>
<div id="buttons">
<input type="submit" value="Submit" class="submit">
<input type="reset" value="Cancel" class="cancel">
</div>
</form>
</article>
<!-- 본문내용 -->
<!-- 본문들어가는 곳 -->

<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>