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

<style type="text/css">
#formArea #inputTable{
	width: 800px;
	margin: 0 auto;
	margin-top: 70px;
}

#inputTable th {
	/*text-align: right;
	padding-right: 70px;
	padding-left: 80px;*/
}

#inputTable td {
	/*text-align: left;*/
	
}

#inputTable textarea {
	resize: none;
}

#inputTable .noticeArea {
	text-align: center;
}


</style>
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
						<th>프로그램 유형</th>
						<td>
							<select name="scheduleType">
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
							<select name="scheduleCourse" onselect="test();">
								<option value="0">========선택========</option>
								<option value="01">01 코스</option><option value="01-1">01-1 코스</option><option value="02">02 코스</option>
								<option value="03-A">03-A 코스</option><option value="03-B">03-B 코스</option><option value="04">04 코스</option>
								<option value="05">05 코스</option><option value="06">06 코스</option><option value="07">07 코스</option>
								<option value="07-1">07-1 코스</option><option value="08">08 코스</option><option value="09">09 코스</option>
								<option value="10">10 코스</option><option value="10-1">10-1 코스</option><option value="11">11 코스</option>
								<option value="12">12 코스</option><option value="13">13 코스</option><option value="14">14 코스</option>
								<option value="14-1">14-1 코스</option><option value="15-A">15-A 코스</option><option value="15-B">15-B 코스</option>
								<option value="16">16 코스</option><option value="17">17 코스</option><option value="18">18 코스</option>
								<option value="18-1">18-1 코스</option><option value="19">19 코스</option><option value="20">20 코스</option>
								<option value="21">21 코스</option>
							</select>
							
						</td>
						<td>
							<input type="text" name="departureLocation">
						</td>
					</tr>
					<tr>
						
					</tr>
					<tr>
						
						<td>봉사자</td>
						<td>
							<input type="text" name="volunteer"><button type="button">회원검색</button>
						</td>
					</tr>
					
					<tr>
						<th>준비물</th>
						<td>
							<input type="text" name="preparation">
						</td>
					</tr>
					
					<tr><th>공지사항/작성내용</th></tr>
					
					<tr>
						<td class="noticeArea" colspan="2">
							<textarea rows="15" cols="130"></textarea>
						</td>	
					</tr>
				</table>
				<button>제출</button>
				<button>취소</button>
			</form>
		</div>
	</div>
	<div id="footer"></div>
	<script type="text/javascript">
	
	
	</script>
</body>
</html>
