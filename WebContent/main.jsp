<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="com.ryan.db.MemberDAO" %>
<%@ page import ="com.ryan.dto.*" %>
<%
	// 세션값 받아오기 (object인 값을 강제로 문자열로 변환)
	String name = (String) session.getAttribute("name");
	if (name == null) {
%>

<!--  로그인 안됨-->
<script>
	alert('로그인을 하세요');
	history.back();
</script>

<%
	} else {

		// 로그인 됨
		System.out.println("로그인 됨 : " + name);
	}
	
	
	
	
	// 1. DBClass 파일에 있는 selectinfo() 메소드에
	// 반환된 값(return list)를 mlist 변수에 ArrayList배열로 삽입
	ArrayList<MemberDTO> mlist = MemberDAO.selectinfo();
	
	// 2. 반환된 값이 들어간 mlist를 
	// MemberDTO m변수로 Getter 메소드들을 호출하며  
	// 값이 없어질때까지 반복
	for(MemberDTO m : mlist){
		
		// DTO에서 받아온 GET 메소드 정보를 시스템에 출력
		// 변수.메소드();
		System.out.println(m.getId());
		System.out.println(" " +m.getName());
		System.out.println(" " +m.getEmail());
		System.out.println(" " +m.getPhone());
		System.out.println(" " +m.getId());
	}
	 
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로그인된 사람만 보이게 하고 싶어요~!
	<%=name%>님
	<form action="info">
	<input type="submit"> 버튼
	</form>
	<a href="logout.jsp"> 로그 아웃</a>
</body>
</html>