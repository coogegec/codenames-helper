<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코드네임 (Codenames) - 팀 나누기</title>
<%@ include file="include/include.jsp" %>
<style>
h1 {
	position: relative;
	text-align: center;
	color: black;
	font-size: 60px;
}
body {
	background-image: url("/codenames/images/background.jpg")
}
textarea, span {
	font-size: 20px;
	align: center;
}
button {
	margin: 20px;
	outline: none;
	font-size: 23px;
}
div {
	text-align: center;
}
a {
	font-size: 25px;
	display: block;
	text-align: center;
}
</style>
<script>
	function divideTeams() {
		var ta = document.getElementById("ta");
		var names = ta.value.split(', ');

		for (var i = names.length - 1; i > 0; i--) {
			var j = Math.floor(Math.random() * (i + 1));
			var temp = names[i];
			names[i] = names[j];
			names[j] = temp;
		}
		var red = [];
		var blue = [];
		console.log(names.length);
		for (var x = 0; x < Math.floor((names.length) / 2); x++) {
			red.push("\u00a0"+names[2 * x + 1]);
		}
		for (var x = 0; x < (names.length) / 2; x++) {
			blue.push("\u00a0"+names[2 * x]);
		}
		document.getElementById("red").innerHTML = red;
		document.getElementById("blue").innerHTML = blue;
	}
</script>
</head>
<body>
	<br>
	<br>
	<h1>팀 나누기</h1>
	<div>
		<textarea id="ta" rows="5" cols="45"></textarea>
		<br>
		<br> <button class="custom-btn btn-4" onclick="divideTeams()">팀 나누기</button>
		<br><br>
		<br> <span style="color: red;">레드 팀 :</span><span id="red"></span>
		<br>
		<br> <span style="color: blue;">블루 팀 :</span><span id="blue"></span>
	</div>
	<br>
	<br>
	<a href="/codenames/" title="Go to main">← 메인으로</a>
</body>
</html>