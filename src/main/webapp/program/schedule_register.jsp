<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>final project demo</title>
<%-- 폰트 - Noto Sans kr --%>
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css"/>

<%-- datepicker --%>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<!-- 공용 css -->
<link rel="stylesheet" href="common.css">
<link rel="stylesheet" href="reset.css">
<link rel="stylesheet" href="program.css">

<style type="text/css">
#formArea #inputTable{
	margin: 0 auto;
	margin-top: 70px;
}


#inputTable th {
	/*text-align: right;
	padding-right: 70px;
	padding-left: 80px;*/
	width: 400px;
	font-weight: normal;
}

#inputTable td {
	text-align: left;
	
}

#noticeRow {
	margin: 35px 0 0 0; 
	text-align: left;
	padding-left: 30px;
}

#inputTable textarea {
	resize: none;
}

#inputTable .noticeArea {
	margin-top: 10px;
	padding: 20px;
	text-align: center;
}

/*********************************************************************************************/
/* inner Table */
#scheduleTitle {
	color: #696969;
	font-weight: 500;
}

.read-only {
	color: #c0c0c0 !important;
	/*마우스 클릭 방지 css*/
	pointer-events: none; 
}

.schedule-input {
	margin: 10px 10px 10px 10px;
	height: 45px;
	padding: 0;
}

.schedule-input::placeholder {
	color: #c0c0c0;
}

#searchBtn {
	height: 45px;
	width: 80px;
}

.program-btn .program-btn-r {
	display: inline-block;
}

.program-btn {
	background: #08b2f5;
	color: #ffffff;
	border: 1px solid #08b2f5;
}

.program-btn:hover {
	background: #008fe9;
	cursor: pointer;
}

.program-btn-r {
	background: #ffffff;
	border: 1px solid #08b2f5;
}

.program-btn-r:hover {
	text-decoration: underline; 
	color: #08b2f5;
	font-weight: 600;
	cursor: pointer;
}

.action-btn {
	width: 160px;
	height: 43px;
	font-size: 15px;
	font-weight: 400;
}

/*********************************************************************************************/
/* datepicker css setting */
.ui-state-active, .ui-widget-content .ui-state-active, .ui-widget-header .ui-state-active, a.ui-button:active, .ui-button:active, .ui-button.ui-state-active:hover {
    border: 1px solid #08b2f5;
    background: #08b2f5;
    font-weight: normal;
    color: #ffffff;
}

.ui-widget-header {
	background: #ffffff;
	border-width: 0px;
	
}

</style>
<script>
	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년',
	    minDate: "-0D" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
	});
	
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
</head>
<body>
	<div id="header">
		header 영역
	</div>
	<div id="container">
		<div class="cont-title">
			<h1>프로그램 등록</h1>
			<span></span>
		</div>
		<div id="formArea">
			<form name="scheduleForm" action="" method="post">
				<table id="inputTable">
					<tr>
						<th>제목</th>
						<td>
							<input class="schedule-input read-only" type="text" id="scheduleTitle" name="scheduleTitle" readonly="readonly">
							<label style="user-select: none;">
								<span>직접입력</span>					
								<input type="checkbox" onclick="inputSelf();">
							</label>						
						</td>
					</tr>
					<tr>
						<th>프로그램 유형</th>
						<td>
							<select class="schedule-input" id="programBox" name="scheduleType" onchange="selectProgram();">
								<option value="0">========선택========</option>
								<option value="1">올레행사 및 프로그램</option>
								<option value="2">아카자봉과 함께 걷기</option>
								<option value="3">역방향 코스</option>
								<option value="4">클린올레</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>코스</th>
						<td>
							<select class="schedule-input" id="courseBox" name="scheduleCourse" onchange="selectCourse();" disabled="disabled">
								<option value="0">========선택========</option>
								<option value="01">01 코스</option><option value="01-1">01-1 코스</option><option value="02">02 코스</option>
								<option value="03A">03A 코스</option><option value="03B">03B 코스</option><option value="04">04 코스</option>
								<option value="05">05 코스</option><option value="06">06 코스</option><option value="07">07 코스</option>
								<option value="07-1">07-1 코스</option><option value="08">08 코스</option><option value="09">09 코스</option>
								<option value="10">10 코스</option><option value="10-1">10-1 코스</option><option value="11">11 코스</option>
								<option value="12">12 코스</option><option value="13">13 코스</option><option value="14">14 코스</option>
								<option value="14-1">14-1 코스</option><option value="15A">15A 코스</option><option value="15B">15B 코스</option>
								<option value="16">16 코스</option><option value="17">17 코스</option><option value="18">18 코스</option>
								<option value="18-1">18-1 코스</option><option value="19">19 코스</option><option value="20">20 코스</option>
								<option value="21">21 코스</option>
							</select>

							<input class="schedule-input" type="text" id="departureLocation" name="departureLocation">
							<span>직접입력</span><input type="checkbox" onclick="changeType();">
						</td>
					</tr>
					<tr>
						<th>일정</th>
						<td>
							<input class="schedule-input" type="text" id="datepicker" name="departureDate" placeholder="출발일을 선택하세요">
							<input class="schedule-input" type="text" name="departureTime" placeholder="ex)출발 시간 09시 30분">
						</td>
					</tr>
					<tr>
						
						<th>봉사자</th>
						<td>
							<input class="schedule-input" type="text" name="volunteer">
							<button class="program-btn" id="searchBtn" type="button">검색</button>
						</td>
					</tr>
					
					<tr>
						<th>준비물</th>
						<td>
							<input class="schedule-input" type="text" name="preparation">
						</td>
					</tr>
					
					<tr><th>
						<div id="noticeRow">
							공지사항/작성내용
						</div>
					</th></tr>
					
					<tr>
						<td class="noticeArea" colspan="2">
							<textarea rows="15" cols="130"></textarea>
						</td>	
					</tr>
				</table>
				<button class="program-btn action-btn" type="submit" onclick="test();">제출</button>
				<button class="program-btn-r action-btn">취소</button>
			</form>
		</div>
	</div>
	<div id="footer"></div>
	<script type="text/javascript">
	
		function inputSelf(){
			var titleClassList=document.getElementById("scheduleTitle").classList;
			
			if(titleClassList.contains("read-only")){
				document.getElementById("scheduleTitle").removeAttribute("readonly");
				document.getElementById("scheduleTitle").focus();
				titleClassList.remove("read-only")
			} else {
				document.getElementById("scheduleTitle").setAttribute("readonly", "readonly");
				titleClassList.add("read-only");
			}
		}
	
		function selectProgram(){
			var programValue=document.getElementById("programBox");
			
			var selectValue=programValue.options[programValue.selectedIndex].value;
			
			if(selectValue==1 || selectValue==0){
				document.getElementById("courseBox").setAttribute("disabled", "disabled");
			} else {
				document.getElementById("courseBox").removeAttribute("disabled");
			}

		}
	
		function selectCourse(){
			var courseValue=document.getElementById("courseBox");
			
			// option의 value
			var selectValue = courseValue.options[courseValue.selectedIndex].value;
			// option의 text
			var selectText = courseValue.options[courseValue.selectedIndex].text;

			document.getElementById("scheduleTitle").setAttribute("value", selectText);
			
			
			// option value값으로 선택
			$("#programBox").val("1").prop("selected", true);

		}
		
		function changeType(){
			document.getElementById("departureLocation").setAttribute("value", "test");
		}
		
	
	</script>
</body>
</html>
