<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<style>
* {
	font-family: 'Jua', sans-serif;
}
.custom-btn {
	width: 130px;
	height: 40px;
	padding: 10px 25px;
	border: 2px solid #000;
	font-weight: 500;
	background: #e3e3e3;
	cursor: pointer;
	transition: all 0.3s ease;
	position: relative;
	display: inline-block;
}
/* 4 */
.btn-4 {
	position: relative;
	color: #000;
	z-index: 2;
	line-height: 40px;
	padding: 0;
}

.btn-4:hover {
	border: none;
}

.btn-4:before, .btn-4:after {
	position: absolute;
	content: "";
	width: 0%;
	height: 0%;
	border: 2px solid;
	z-index: -1;
	transition: all 0.3s ease;
}

.btn-4:before {
	top: 0;
	left: 0;
	border-bottom-color: transparent;
	border-right-color: transparent;
	border-top-color: #000;
	border-left-color: #000;
}

.btn-4:after {
	bottom: 0;
	right: 0;
	border-top-color: transparent;
	border-left-color: transparent;
	border-bottom-color: #000;
	border-right-color: #000;
}

.btn-4:hover:before, .btn-4:hover:after {
	border-color: #000;
	height: 100%;
	width: 100%;
}
</style>