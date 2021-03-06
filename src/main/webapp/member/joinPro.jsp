<%@page import="member.MemberDAO"%>
<%@page import="member.MemberDTO"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/joinPro.jsp</title>
</head>
<body>
<%
// request 한글처리
request.setCharacterEncoding("utf-8");
// request에 저장된 id,pass,name,email,address,phone,mobile 파라미터 가져오기
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
String email=request.getParameter("email");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String mobile=request.getParameter("mobile");
String address2=request.getParameter("address2");
String addressno=request.getParameter("addressno");
//시스템에 있는 날짜와 시간 가져오기 => Timestamp내장객체 생성
Timestamp date=new Timestamp(System.currentTimeMillis());

// 패키지(폴더) member 파일 MemberDTO 만들기
// 멤버변수 정의  set get 메서드 만들기
// MemberDTO 객체생성
MemberDTO mDTO =new MemberDTO();
// set메서드 호출 파라미터값 저장
mDTO.setId(id);
mDTO.setPass(pass);
mDTO.setName(name);
mDTO.setEmail(email);
mDTO.setAddress(address);
mDTO.setPhone(phone);
mDTO.setMobile(mobile);
mDTO.setDate(date);
mDTO.setAddressno(addressno);
mDTO.setAddress2(address2);

// 패키지(폴더) member  파일 MemberDAO 만들기 
// 리턴할형없음 insertMember(MemberDTO mDTO) 메서드 정의 
// MemberDAO 객체생성
MemberDAO mDAO=new MemberDAO();
// insertMember(mDTO) 메서드호출
mDAO.insertMember(mDTO);

// login.jsp 이동
response.sendRedirect("login.jsp");
%>
</body>
</html>




