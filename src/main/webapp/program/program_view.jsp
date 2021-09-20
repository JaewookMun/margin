<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>final project demo</title>

<%-- 폰트 - Noto Sans kr --%>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css"/>

<!-- 공용 css -->
<link rel="stylesheet" href="common.css">
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="program.css">

<style>

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