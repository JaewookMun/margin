<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>final project demo</title>

<link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.css" rel="stylesheet">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/fullcalendar@5.9.0/main.min.js"></script>

<script type="text/javascript">

document.addEventListener('DOMContentLoaded', function() {
   var calendarEl = document.getElementById('calendar');
   var calendar = new FullCalendar.Calendar(calendarEl, {
     initialView: 'dayGridMonth',
     
     events: [
    	 {
    		 title: 'test',
    		 start: '2021-09-06'
    	 },
    	 {
    		 title: 'difficult',
    		 url: 'https://www.naver.com',
    		 start: '2021-09-25'
    	 }
     ]
   });
   calendar.render();
});

</script>
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

.cont-nav ul li {
	display: inline-block;
	list-style: none;
	border: 1px solid #e2e2e2;
	width: 14%;
	height: 50px;
}

.link-tab {
	text-decoration: none;
	color: #b29a95;
	vertical-align: -13px;
}

.link-tab:hover, .on {
	background-color: #08b2f5;
	color: #ffffff;
}

#calendar {
	width: 80%;
	margin: 0 auto;
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
					<li><a class="link-tab" href="javascript:void(0);" onclick="toggleOn();">전체일정</a></li><!--  
					--><li><a class="link-tab" href="javascript:void(1);" onclick="toggleOn();">아카자봉</a></li><!--
					--><li><a class="link-tab" href="javascript:void(2);" onclick="toggleOn();">아카데미</a></li><!--
					--><li><a class="link-tab" href="javascript:void(3);" onclick="toggleOn();">클린올레</a></li><!--
					--><li><a class="link-tab" href="javascript:void(4);" onclick="toggleOn();">자원봉사</a></li><!--
					--><li><a class="link-tab" href="javascript:void(5);" onclick="toggleOn();">길동무</a></li>
				</ul>
			</div>
			<div class="contents-area">
			
			<div id="calendar"></div>
			
			</div>
		</div>
	</div>
	<div id="footer">
	
	</div>
	<script type="text/javascript">
		function toggleOn() {
			// javascript는 일괄처리를 할 수 없기 때문에 반복문 처리를 해줘야한다.			
			var tabList = document.getElementsByClassName("link-tab");
			for(i=0; i<tabList.length; i++){
				tabList[i].classList.remove("on");
			}

			var eventSrc=event.srcElement;
			// alert(event.srcElement);
			
			eventSrc.classList.toggle("on");
			
			
			if(eventSrc=="javascript:void(0);"){

			} else if(eventSrc=="javascript:void(1);"){
				
			} else if(eventSrc=="javascript:void(2);"){
				
			} else if(eventSrc=="javascript:void(3);"){
				
			} else if(eventSrc=="javascript:void(4);"){
				
			} else if(eventSrc=="javascript:void(5);"){
				
			}
		}
	
	</script>
</body>
</html>