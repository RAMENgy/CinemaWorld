<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/loginPro.jsp</title>
</head>
<body>
<%
// request에 저장 id pass 폼에서 입력한 값 가져오기
String id=request.getParameter("id");
String pass=request.getParameter("pass");

// MemberDAO 객체생성
MemberDAO mDAO=new MemberDAO();
// MemberDTO 리턴할형 userCheck(String id, String pass) 메서드 정의
// MemberDTO mDTO = usercheck(id, pass)호출
MemberDTO mDTO=mDAO.userCheck(id, pass);
// mDTO != null 세션값생성 "id",id		../member/main.jsp로 이동
// mDTO == null		입력하신정보 틀림 뒤로이동
if(mDTO!=null){
	//true 일치  => 로그인인증 => 세션값 생성(중복되지 않는값) => 페이지 상관없이 값유지 => main.jsp 이동
	out.println("일치");
	session.setAttribute("id", id);
	response.sendRedirect("../main/main.jsp");
}else{
	//false 틀림 => "입력하신 정보 틀림"  뒤로이동
	out.println("틀림"); 
	%>
	<script type="text/javascript">
		alert("입력하신 정보 틀림");
		history.back();
	</script>
	<%
}
%>


</body>
</html>