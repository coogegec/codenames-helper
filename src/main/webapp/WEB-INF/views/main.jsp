<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코드네임 (Codenames)</title>
<%@ include file="include/include.jsp" %>
<style>
body {
	background-image: url("/codenames/images/background.jpg")
}

h1 {
	position: relative;
	text-align: center;
	color: black;
	font-size: 60px;
}

.frame {
	width: 90%;
	margin: 40px auto;
	text-align: center;
}

button {
	margin: 20px;
	outline: none;
	font-size: 23px;
}
</style>
</head>
<body>
	<br><br>
	<h1>코드네임 (Codenames)</h1>
	<br><br>
	<div class="frame">
		<button class="custom-btn btn-4" onclick="location.href='/codenames/team.do'">팀 나누기</button>
		<br>
		<button class="custom-btn btn-4" onclick="location.href='/codenames/insert.do'">단어 추가</button>
		<br>
		<button class="custom-btn btn-4" onclick="location.href='/codenames/setup.do'">게임 세팅</button>
	</div>
</body>
</html>