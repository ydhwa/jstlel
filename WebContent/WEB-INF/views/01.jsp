<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("i", 10);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>데이터 타입</h1>
	${ iVal }<br>
	${ lVal }<br>
	${ fVal }<br>
	${ bVal }<br>
	--${ obj }--<br> <!-- null값은 출력을 안한다. -->
	
	
	<h1>연산</h1>
	${ iVal + 20 * lVal / 2 - 10 }<br>
	${ iVal < lVal && fVal < 5 }<br>
	${ empty obj }<br> <!-- obj is null -->
	${ not empty obj }<br> <!-- obj is not null -->
	
	
	<h1>요청 파라미터 가져오기</h1>
	<!-- URI?a=___ -->
	<!-- request.getParameter는 String형이므로 String + ___의 형태로 나옴 -->
	<%= request.getParameter("a") + 10 %><br> <!-- a가 10이라면 1010 -->
	<!-- 여기서는 파라미터 뒤의 내용이 auto boxing이 되어 정수를 파라미터로 넣었다면 정수 + 정수 형태로 출력됨 -->
	${ param.a + 10 }<br> <!-- a가 10이라면 20 -->
	
	
	<h1>객체 접근</h1>
	<!-- 이게 정석적인 표현. 충돌날 때 이 방법을 쓰면 될 것이다. -->
	${ sessionScope.vo.no }<br>
	<!-- 일반적으로 자주 사용하는 방법 -->
	${ vo.no }<br>
	${ vo.name }<br>
	
	
	<h1>Map 객체 접근</h1>
	${ map.iVal }<br>
	${ map.lVal }<br>
	${ map.fVal }<br>
	${ map.bVal }<br>
	--${ map.nVal }--<br>
	
	
	<h1>'-'</h1>
	${ 10 + 200 * 3.14 }<br>
	<!-- i는 변수가 아니라 이름이다. -->
	${ i }<br>
</body>
</html>