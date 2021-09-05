<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>final project demo</title>
<%-- 폰트 - Noto Sans kr --%>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css"/>

<script type="text/javascript">
//Date 객체 저장 - 달력출력을 위한 기준일
var today = new Date();

// 이전 달의 date 객체 저장 및 재출력
function prev() {
	today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
	makeCalendar(); 
}

// 다음 달의 date 객체 저장 및 재출력
function next() {
     today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
     makeCalendar();
}

function makeCalendar(){// 현재 달 달력 만들기
	// getMonth() : 0 ~ 11
	// 일자를 0으로 설정할 경우 해당월의 마지막날이 나온다.
	
	var firstDate = new Date(today.getFullYear(),today.getMonth()+1,1);
	var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);

	// calendar 엘리먼트
	var calendarElement = document.getElementById("calendar");
	
	var yearMonthTxt = document.getElementById("yearMonthTxt");

	yearMonthTxt.innerHTML = today.getFullYear() + "." + (today.getMonth() + 1); 

	var row = null;
	row = tbCalendar.insertRow();
	//테이블에 새로운 열 삽입//즉, 초기화
	var cnt = 0;// count, 셀의 갯수를 세어주는 역할
	// 1일이 시작되는 칸을 맞추어 줌
	for (i=0; i<doMonth.getDay(); i++) {
		/*이번달의 day만큼 돌림*/
		cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
		cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
	}
	/*달력 출력*/
	for (i=1; i<=lastDate.getDate(); i++) { 
	//1일부터 마지막 일까지 돌림
		cell = row.insertCell();//열 한칸한칸 계속 만들어주는 역할
		cell.innerHTML = i;//셀을 1부터 마지막 day까지 HTML 문법에 넣어줌
		cnt = cnt + 1;//열의 갯수를 계속 다음으로 위치하게 해주는 역할
		if (cnt % 7 == 1) {/*일요일 계산*/
		//1주일이 7일 이므로 일요일 구하기
		//월화수목금토일을 7로 나눴을때 나머지가 1이면 cnt가 1번째에 위치함을 의미한다
		cell.innerHTML = "<font color=#F79DC2>" + i
		//1번째의 cell에만 색칠
		}    
		if (cnt%7 == 0){/* 1주일이 7일 이므로 토요일 구하기*/
			//월화수목금토일을 7로 나눴을때 나머지가 0이면 cnt가 7번째에 위치함을 의미한다
			cell.innerHTML = "<font color=skyblue>" + i
			//7번째의 cell에만 색칠
			row = calendar.insertRow();
			//토요일 다음에 올 셀을 추가
		}
		/*오늘의 날짜에 노란색 칠하기*/
		if (today.getFullYear() == date.getFullYear()
			&& today.getMonth() == date.getMonth()
			&& i == date.getDate()) {
			//달력에 있는 년,달과 내 컴퓨터의 로컬 년,달이 같고, 일이 오늘의 일과 같으면
			cell.bgColor = "#FAF58C";//셀의 배경색을 노랑으로 
		}
	}
}
</script>
<style>
body {
	margin: 0px;
	padding: 0px;
	font-family: 'Noto Sans KR', sans-serif;
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

/******************************************************************************************/
/* 달력관련 css */

.calendar-area {
	margin-top: 50px;
}

#month-area {
	margin-bottom: 40px;
}

#month-area div {
	display: inline;
}


#prevMonth img {
	display: inline-block;
	margin-right: 40px;
	vertical-align: 8px;
}

#prevMonth img:hover {
	background-image: url("images/month_prev_r.png");
	background-repeat: no-repeat;
	cursor: pointer;
}

#nextMonth img {
	display: inline-block;
	margin-left: 40px;
	vertical-align: 8px;
}

#nextMonth img:hover {
	background-image: url("images/month_next_r.png");
	background-repeat: no-repeat;
	cursor: pointer;
}


#yearMonthTxt {
	color: #08b2f5; 
	font-size: 62px;
	font-weight: 700;
}


.day {
	display: inline;
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
			<div class="calendar-area">
				<div id="month-area">
					<%-- 이전 달로 이동 --%>
					<div id="prevMonth">
						<img alt="next" src="images/month_prev.png">
					</div>
					
					<%-- 연도 & 월 --%>
					<div id="yearMonthTxt"></div>
					
					<%-- 다음 달로 이동 --%>
					<div id="nextMonth">
						<img alt="next" src="images/month_next.png">
					</div>
				</div>
			
				<div class="program_type"></div>
				
				<div id="days">
					<div class="day">일</div>
					<div class="day">월</div>
					<div class="day">화</div>
					<div class="day">수</div>
					<div class="day">목</div>
					<div class="day">금</div>
					<div class="day">토</div>
				</div>
				<%-- 6줄... --%>
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
		
		function test(){
			var yearMonthTxt = document.getElementById("yearMonthTxt");

			yearMonthTxt.innerHTML = today.getFullYear() + "." + (today.getMonth() + 1); 
		}
		
		test();
	
	
	</script>
</body>
</html>