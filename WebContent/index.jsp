<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
*, *:after, *:before {
  box-sizing: border-box;
}



.ryan {
  position: relative;
  margin: 50px auto;
  width: 400px;
  height: 380px;
}

.ryan:hover .eyebrow.left { // 눈썹 기울기

     -webkit-transform: rotate(+10deg);
  transform: rotate(+10deg);

}

.ryan:hover .eyebrow.right {   // 눈썹 기울기

  -webkit-transform: rotate(-10deg);
  transform: rotate(-10deg);
}

.ryan:hover .eye.right {   //  오른쪽눈 감기
  -webkit-transform: scale(2, 0.1);
  transform: scale(2, 0.1);
}

.ryan:hover .eye.left {   //  왼쪽눈 감기
  -webkit-transform: scale(2, 0.1);
  transform: scale(2, 0.1);
}










.ryan .ear {
  position: absolute;
  top: 0;
  width: 92px;
  height: 92px;
  border: 10px solid #000;
  border-radius: 100%;
  background: #d59729;
}

.ryan .ear.left {
  left: 54px;
}

.ryan .ear.right {
  right: 54px;
}

.ryan .face {
  position: absolute;
  bottom: 0;
  width: 400px;
  height: 367px;
  border-radius: 100%;
  border: 10px solid #000;
  background: #d59729;
}

.ryan .eyebrow {
  position: absolute;
  top: 106px;
  width: 78px;
  height: 14px;
  border-radius: 14px;
  background: #000;
  transition: all 0.2s;
}

.ryan .eyebrow.left {
  left: 68px;
}

.ryan .eyebrow.right {
  right: 68px;
}

.ryan .eye {
  position: absolute;
  top: 147px;
  width: 26px;
  height: 26px;
  border-radius: 100%;
  background: #000;
  transition: all 0.2s;
}

.ryan .eye.left {
  left: 98px;
}

.ryan .eye.right {
  right: 98px;
}

.ryan .nose {
  position: absolute;
  top: 184px;
  left: 50%;
  margin-left: -16px;
  width: 32px;
  height: 33px;
  border-radius: 80% 80% 100% 100%;
  background: #000;
  z-index: 2;
}

.ryan .mouth {
  position: absolute;
  top: 191px;
  right: 73px;
  width: 73px;
  height: 68px;
  border: 10px solid #000;
  border-radius: 50%;
  background: #fff;
}
.ryan .mouth.left {
  left: 127px;
}

.ryan .mouth.right {
  right: 127px;
}

.ryan .mouth:before {
  content: "";
  position: absolute;
  width: 30px;
  height: 33px;
  background: #fff;
  -webkit-transform: rotate(-45deg);
  transform: rotate(-45deg);
  z-index: 1;
}

.ryan .mouth.left:before {
  top: 2px;
  left: 29px;
}

.ryan .mouth.right:before {
  top: 2px;
  right: 31px;
}
</style>
<body>
<h1 align="center"> 접속 </h1>

<%

 String name = (String) session.getAttribute("name");
 if(name == null) {  %>
 
 <!--  세션값 없을시 로그인페이지로 이동 -->
<a href="login.jsp"> 

<% 	 
 }   
 else{ %>
 <!-- 세션값 있으면 바로 메인홈페이지로 이동 -->

	<a href="main.jsp"> 
	 <%
 }
 %>



<div class="ryan">  
  <div class="ear left"></div>
  <div class="ear right"></div>
  
  <div class="face">
    <div class="eyebrow left"></div>
    <div class="eyebrow right"></div>
    <div class="eye left"></div>
    <div class="eye right"></div>
    <div class="nose"> </div>
    
    <div class="mouth left"></div>
    <div class="mouth right"></div>
  </div>
</div>
</a>

</body>
</html>