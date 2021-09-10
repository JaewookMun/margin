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

<style type="text/css">
#formArea table{
	width: 800px;
	margin: 0 auto;
	margin-top: 70px;
}

table th{
	text-align: right;
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
				<table>
					<tr>
						<th>프로그램 유형</th>
						<td>
							<select>
								<option>========선택========</option>
								<option>올레행사 및 프로그램</option>
								<option>아카자봉과 함께 걷기</option>
								<option>역방향 코스</option>
								<option>클린올레</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>코스</th>
						<td>
							<input type="text">
						</td>
					</tr>
					
				</table>
			</form>
		</div>
	</div>
	<div id="footer"></div>
</body>
</html>