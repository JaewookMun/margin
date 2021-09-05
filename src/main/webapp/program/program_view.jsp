<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>final project demo</title>


<style>
body {
	margin: 0px;
	padding: 0px;
}

#header {
	border-bottom: 1px solid gray;
	padding: 40px;
}

#container {
	width: 80%;
	margin: 0 auto;
	padding-top: 40px;
	margin-bottom: 80px;
	text-align: center;
}

.cont-title {
	padding-top: 10px;
}

.cont-title h1 {
	margin: 0px;
}

.cont-title span {
	background-color: #08b2f5;
	width: 60px;
    height: 6px;
    background: #08b2f5;
    position: relative;
    display: inline-block;
    margin: 0 auto;
}

.cont-nav {
	text-align: center;
}

.cont-nav ul {
	padding-left: 0px;
}

.link-tab {
	display: inline-block;
	list-style: none;
	border: 1px solid #e2e2e2;
	width: 14%;
	height: 50px;
	color: #b29a95;
}

.link-tab a {
	display: block;
	text-decoration: none;
	color: inherit;
	width: 100%;
	height: 100%;
	padding-top: 13px;
}

.link-tab:hover, .on {
	background-color: #08b2f5;
	color: #ffffff;
}

.contents-area {
	margin-top: 50px;
}

</style>
</head>
<body>
	<div id="header">
		header 영역
	</div>
	<div id="container">
		<div class="cont-title">
			<h1>프로그램</h1>
			<span></span>
		</div>
		<div class="main-content">
			<div class="cont-nav">
				<ul>
					<li class="link-tab"><a href="schedule.jsp?tab=1">전체일정</a></li><!--  
					--><li class="link-tab"><a href="acajabong.jsp?tab=2">아카자봉</a></li><!--
					--><li class="link-tab"><a href="academy.jsp?tab=3">아카데미</a></li><!--
					--><li class="link-tab"><a href="cleanolle.jsp?tab=4">클린올레</a></li><!--
					--><li class="link-tab"><a href="volun.jsp?tab=5">자원봉사</a></li><!--
					--><li class="link-tab"><a href="together.jsp?tab=6">길동무</a></li>
				</ul>
			</div>
			<div class="contents-area">
			
			
			</div>
		</div>
	</div>
	<div id="footer">
	
	</div>
	<script type="text/javascript">
		function addOn(){
			var tabList=document.getElementsByClassName("link-tab");
			tabList[0].classList.add("on");
		}
		addOn();
	
	</script>
</body>
</html>