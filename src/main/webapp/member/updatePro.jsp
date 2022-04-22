<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/updatePro.jsp</title>
</head>
<body>
<%
// request 한글처리
request.setCharacterEncoding("utf-8");
// requset 파라미터값 가져오기
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
String date=request.getParameter("date");
String email=request.getParameter("email");
String address=request.getParameter("address");
String address2=request.getParameter("address2");
String addressno=request.getParameter("addressno");
String phone=request.getParameter("phone");
String mobile=request.getParameter("mobile");

// MemberDAO 객체생성
MemberDAO mDAO = new MemberDAO();
// MemberDTO mDTO = userCheck(id, pass) 메서드 호출
MemberDTO mDTO = mDAO.userCheck(id, pass);


// mDTO != null 아이디 비밀번호 일치
//				수정할 정보 저장 MemberDTO updateDTO 객체 생성
//							  set메서드 호출 파라미터 저장
//				수정 리턴할형 없음 updateMember(MemberDTO updateDTO) 메서드 정의
//				updateMember(updateDTO) 메서드 호출
//				../main/main.jsp 이동
// mDTO == null 아이디 비밀번호 틀림 "입력하신 정보 틀림" 뒤로 이동
if(mDTO!=null){
	// 아이디 비밀번호 일치
	MemberDTO updateDTO=new MemberDTO();
	updateDTO.setId(id);
	updateDTO.setPass(pass);
	updateDTO.setName(name);
	updateDTO.setEmail(email);
	
	mDAO.updateMember(updateDTO);
	
	response.sendRedirect("../main/main.jsp");
}else{
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