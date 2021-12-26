<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코드네임 (Codenames)</title>
<%@ include file="include/include.jsp" %>
<style>
img{
	width: 220px;
	height: 139px;
	border-radius: 15px;
	align: center;
}
.card{
	position: relative;
	width: 220px;
	height: 139px;
}
.card:hover img{
	opacity: 0.5;
}
.card:hover span{
	opacity: 0.5;
}
.card:hover input{
	display: block;
}
.card input{
	display: none;
	position: absolute;
	border-radius: 5px;
	border: solid 1px;
	font-family: Georgia, "맑은 고딕", serif;
	color: white;
}
.card .blue{
	top:-80px;
	left:17px;
	background-color: #008cba;
}
.card .blue:active{
	transform: translateY(3px);
}
.card .red{
	top:-80px;
	left:61px;
	background-color: #f44336;
}
.card .red:active{
	transform: translateY(3px);
}
.card .neutral{
	top:-80px;
	left:105px;
	background-color: #ebd3b0;
	color: black;
}
.card .neutral:active{
	transform: translateY(3px);
}
.card .assassin{
	top:-80px;
	left:149px;
	background-color: #555555;
}
.card .assassin:active{
	transform: translateY(3px);
}
.word{
	position: absolute;
	top: -48px;
	left: 27px;
	font-size: 30px;
}
</style>
<script>
function blue(i){
	//console.log("i:"+i);
	var word=document.getElementById("word"+i).innerText;
	//console.log(word);
	if (document.getElementById("word"+i).style.visibility != "hidden"){
		document.getElementById("wordCard"+i).src="/codenames/images/blueteam.jpg";
		document.getElementById("word"+i).style.visibility="hidden";
	} else {
		document.getElementById("wordCard"+i).src="/codenames/images/card.jpg";
		document.getElementById("word"+i).style.visibility="visible";
	}
}
function red(i){
	var word=document.getElementById("word"+i).innerText;
	if (document.getElementById("word"+i).style.visibility != "hidden"){
		document.getElementById("wordCard"+i).src="/codenames/images/redteam.jpg";
		document.getElementById("word"+i).style.visibility="hidden";
	} else {
		document.getElementById("wordCard"+i).src="/codenames/images/card.jpg";
		document.getElementById("word"+i).style.visibility="visible";
	}
}
function neutral(i){
	var word=document.getElementById("word"+i).innerText;
	if (document.getElementById("word"+i).style.visibility != "hidden"){
		document.getElementById("wordCard"+i).src="/codenames/images/neutral_resize.jpg";
		document.getElementById("word"+i).style.visibility="hidden";
	} else {
		document.getElementById("wordCard"+i).src="/codenames/images/card.jpg";
		document.getElementById("word"+i).style.visibility="visible";
	}
}
function assassin(i){
	var word=document.getElementById("word"+i).innerText;
	if (document.getElementById("word"+i).style.visibility != "hidden"){
		document.getElementById("wordCard"+i).src="/codenames/images/assassin_resize.jpg";
		document.getElementById("word"+i).style.visibility="hidden";
	} else {
		document.getElementById("wordCard"+i).src="/codenames/images/card.jpg";
		document.getElementById("word"+i).style.visibility="visible";
	}
}
</script>
</head>
<body style="background-color: #d7d7d7;">
<div style="text-align: center;">
<c:forEach var="row" items="${list}" begin="0" end="24" varStatus="i">
<span class="card">
<img src="/codenames/images/card.jpg" alt="" id="wordCard${i.count}">
<span class="word" id="word${i.count}">
<c:choose>
<c:when test="${fn:length(row.word)==1}">　　&nbsp;${row.word}</c:when>
<c:when test="${fn:length(row.word)==2}">　　${row.word}</c:when>
<c:when test="${fn:length(row.word)==3}">&nbsp;&nbsp;&nbsp;&nbsp;${row.word}</c:when>
<c:when test="${fn:length(row.word)==4}">&nbsp;&nbsp;&nbsp;${row.word}</c:when>
<c:when test="${fn:length(row.word)==5}">&nbsp;&nbsp;${row.word}</c:when>
<c:otherwise>&nbsp;${row.word}</c:otherwise>
</c:choose>
</span>
<input class="blue" type="button" value="블루" onclick="blue('${i.count}')">
<input class="red" type="button" value="레드" onclick="red('${i.count}')">
<input class="neutral" type="button" value="중립" onclick="neutral('${i.count}')">
<input class="assassin" type="button" value="암살자" onclick="assassin('${i.count}')">
</span>&nbsp;&nbsp;
<c:if test="${i.count mod 5 == 0 }">
<br><br>
</c:if>
</c:forEach>
<br>
<span style="font-size: 25px;"><a href="/codenames/" title="Go to main">← 메인으로</a></span>
</div>
</body>
</html>