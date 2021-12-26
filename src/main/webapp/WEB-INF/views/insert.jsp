<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코드네임 (Codenames) - 추가 단어 등록</title>
<%@ include file="include/include.jsp" %>
<style>
body {
	background-image: url("/codenames/images/background.jpg")
}
h1 {
	text-align: center;
	color: black;
	font-size: 60px;
}
a {
	font-size: 25px;
	display: block;
	text-align: center;
}
div {
	text-align: center;
}
input {
	font-size: 20px;
}
.result {
	font-size: 20px;
	text-align: center;
}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(function(){
	$("#inputWord").focus();
	$("#btnSubmit").click(function(){
		var word = $("#inputWord").val();
		if (word == ""){
			alert("단어를 입력하세요.");
			$("#inputWord").focus();
			return;
		}
		document.form1.action = "/codenames/insertWord.do";
	});
});
</script>
</head>
<body>
<br>
<br>
<h1>추가 단어 등록</h1>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<form name="form1" method="post">
<div><input id="inputWord" name="word">　　<input id="btnSubmit" type="submit" value="확인"></div>
<br>
<br>
<c:choose>
<c:when test="${message=='success'}">
<div class="result" style="color: blue;">단어가 성공적으로 등록되었습니다 : ' ${newWord} '</div>
</c:when>
<c:when test="${message=='failure'}">
<div class="result" style="color: red;">이미 등록되어 있는 단어입니다 : ' ${newWord} '</div>
</c:when>
</c:choose>
</form>
<br>
<br>
<br>
<a href="/codenames/" title="Go to main">← 메인으로</a>
</body>
</html>