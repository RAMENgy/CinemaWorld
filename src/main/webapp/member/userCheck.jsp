<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/userCheck.jsp</title>
<script type="text/javascript">
function ok() {
	// join.jsp id 상자에 value <= 찾은 아이디 userCheck.jsp id 상자 value
	opener.document.fr.id.value=document.wfr.id.value
	// 창닫기
	window.close();
}
</script>
</head>
<body>
<h1>member/userCheck.jsp</h1>
<%
// id 파라미터 값 가져오기
String id=request.getParameter("id");
// MemberDAO 객체생성
MemberDAO mDAO=new MemberDAO();
// MemberDTO mDTO = getMember(id)메서드 호출
MemberDTO mDTO=mDAO.getMember(id);
// mDTO==null id없음 아이디 사용가능
// mDTO!=null id있음 아이디 중복
if(mDTO==null){
	//아이디 없음
	%><h2>아이디 사용가능!</h2>
	<input type="button" value="아이디 사용" onclick="ok()">
	<%
	
}else{
	//아이디 있음
	%><h2>아이디 중복! 사용불가능!</h2><%
}

%>
<form action="userCheck.jsp" method="get" name="wfr">
아이디 : <input type="text" name="id" value="<%=id %>"><br>
<input type="submit" value="아이디 중복체크">

</form>


</body>
</html>