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
<link rel="stylesheet" href="program.css">

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
	var firstDate = new Date(today.getFullYear(),today.getMonth(),1);
	// 일자를 0으로 설정할 경우 이전 월의 마지막날이 나온다.
	var lastDate = new Date(today.getFullYear(),today.getMonth()+1,0);
	
	// 년.월 표기
	var yearMonthTxt = document.getElementById("yearMonthTxt");
	yearMonthTxt.innerHTML = today.getFullYear() + "." + (today.getMonth()+1); 
	
	// calendar 엘리먼트
	var calendarElement = document.getElementById("calendar");
	
	var html="";
	var count=0;
	
	html+="<div class='days'>"
	// sun - sat : 0 - 6
	for(i=0; i<firstDate.getDay(); i++) {
		html+="<div class='date'>&nbsp;</div>"
		count++;
	}
	
	for(i=0; i<lastDate.getDate(); i++) {
		html+="<div id=date"+(i+1)+" class='date'>"+(i+1)+"<div class='event'></div></div>"
		count++;
		if(count%7==0){
			html+="</div><div class='days'>";
		}
	}
	
	html+="</div>";
	
	/*
	html+="<table><tr>"
	
	for(i=0; i<firstDate.getDay(); i++) {
		html+="<td class='date'></td>"
		count++;
	}
	
	for(i=0; i<lastDate.getDate(); i++) {
		html+="<td id=date"+(i+1)+" class='date'>"+(i+1)+"</td>"
		count++;
		if(count%7==0){
			html+="</tr><tr>";
		}
	}
	html+="</tr></table>"
	*/
	
	calendarElement.innerHTML=html;
}

function addLinkTest(dateId, scheduleNo){
	/*
	var date=document.getElementById(dateId);
	var html="<div class='event'><div><a href='https://www."+scheduleNo+".com'>0코스 네이버링크</a></div></div>";
	date.insertAdjacentHTML("beforeend", html);
	*/
	var eventBlock=document.getElementById(dateId).childNodes[1];
	var html="<div class='test'><a href='https://www."+scheduleNo+".com'>"+scheduleNo+"</a></div>";
	eventBlock.insertAdjacentHTML("beforeend", html);
	
}



</script>
<style>
/*
* {
	-webkit-box-sizing: border-box;
}
*/


/*****************************************************************/
/* 달력 css - year, month */

.calendar-area {
	margin-top: 50px;
	width: 100%;
}

#month-area {
	margin-bottom: 40px;
}

#month-area div {
	display: inline;
	user-select: none;
}

#month-area p {
	color: #333;
	font-size: 15px;
    font-weight: 300;
}

#yearMonthTxt {user-select: text !important;}


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


/*****************************************************************/
/* calendar - program type (프로그램 유형 리스트) css */

#program_type {
	text-align: left
}

#program_type ul {
	float: left;
}

.dayColumns {
	clear: both;
}


/*****************************************************************/
/* 달력 css - days(week), day(요일), date(일) */

#calendar {
	margin: 0 auto;
	/*width: 100%;*/
	/*position: relative;*/
}

.days {
	/*width: 100%;*/
	text-align: left;
}

.days .date:nth-child(7) {
	color: #3399FF;
}

.days .date:first-child {
	color: #FF6600;
}

.day, .date {
	user-select: none;
	display: inline-block;
	width: 14.286%;
	/*width: 130.75px;*/
}

.day {
	background: #78808c;
	color: #fdf6ee;
	margin: 0px;
	padding: 10px 6px;
	text-align: center;
}

.date {
	border: 1px solid #f0f0f0;
	padding: 5px;
	height: 168px;
	text-align: right;
	font-size: 14px;
	color: #666;
	position: relative;
}

.date:hover {
	background: #fef0f0;
}

/*****************************************************************/
/* event */
/*calendar, date -> position relative로 수정*/
.event {
	/*width: 100%;
	height: auto;*/	
	clear: both;
	position: absolute;
	top: 45px;
	right: 30px;
	/*display:inline-block;*/
	font-size: 13px;
	/*line-height: 0px;*/
	padding: 1px;
}

.event a {
	text-decoration: none;

}
.event a:active {
	color: #561f8e;
}

.event a:hover {
	text-decoration: underline;
}

/*****************************************************************/

*{box-sizing:border-box;}
/* 잘 모르겠지만 위의 css 속성 때문에 달력 블럭 줄바뀜 문제가 발생되지 않는다. */

/*****************************************************************/
/*
	[to-do list]
	1. 배율 조정시 달력블럭 줄바뀜 처리 -> try 최소 width 설정 (더 안 좁아지게 설정)
*/

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
				<div id="prevMonth" onclick="prev();">
					<img alt="next" src="images/month_prev.png">
				</div>
				
				<%-- 연도 & 월 --%>
				<div id="yearMonthTxt"></div>
				
				<%-- 다음 달로 이동 --%>
				<div id="nextMonth" onclick="next();">
					<img alt="next" src="images/month_next.png">
				</div>
				<p>제주올레에서 진행되는 행사 및 프로그램 일정을 확인 할 수 있습니다.</p>
			</div>
		
			<div id="program_type">
				<ul>
					<li class="p_typeList">
						<div class="bullet_A">제주올레행사 및 프로그램</div>
					</li>
				</ul>
				<ul>
					<li class="p_typeList">
						<div class="bullet_B">아카자봉과 함께 걷기</div>
					</li>
				</ul>
				<ul>
					<li class="p_typeList">
						<div class="bullet_C">역방향 코스</div>
					</li>
				</ul>
				<ul>
					<li class="p_typeList">
						<div class="bullet_D">클린올레</div>
					</li>
				</ul>
			</div>
			
			<div class="days dayColumns">
				<div class="day">일</div><!--  
				--><div class="day">월</div><!--
				--><div class="day">화</div><!--
				--><div class="day">수</div><!--
				--><div class="day">목</div><!--
				--><div class="day">금</div><!--
				--><div class="day">토</div>
			</div>
			
			<%-- 달력 출력 엘리먼트 --%>
			<div id="calendar"></div>
			
		</div>
	</div>
	<div id="footer">
	
	</div>
	<script type="text/javascript">
		makeCalendar();	
		
		addLinkTest("date6", "naver");
		addLinkTest("date6", "google");
		addLinkTest("date10", "google");
		//alert(document.getElementById("date1").childNodes[1]);
		
		
		
		
		function addOn(){
			var tabList=document.getElementsByClassName("link-tab");
			tabList[0].classList.add("on");
		}
		addOn();
		
		
		/*
		function test(){
			var yearMonthTxt = document.getElementById("yearMonthTxt");

			yearMonthTxt.innerHTML = today.getFullYear() + "." + (today.getMonth() + 1); 
		}
		
		test();
		
		var html="<div id='test1' class='day'>test</div>";
		document.getElementById("days").insertAdjacentHTML('beforeend', html);
		*/
		
	</script>
</body>
</html>