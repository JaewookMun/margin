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
	/* 상단 영역 */
	#programInfoContainer {
		margin-top: 30px;
		padding-bottom: 30px;
		border-bottom: 2px solid #08b2f5;
	}
	
	#programInfo {
    	width: 100%;
	    height: auto;
	    position: relative;
	    display: inline-block;
	    padding: 20px 30px;
	    background: #F0FAFF;
	}
	
	.view-header {
		width: 100%;
	    padding: 30px 50px;
	    position: relative;
	    display: inline-block;
	    border-bottom: 1px solid #ddd;
	}
	
	.view-title {
		font-size: 22px;
	    font-weight: 500;
	    line-height: 26px;
	    color: #333;
	    letter-spacing: -2px;
	}
	
	/* 본문 영역 */
	.view-body {
		padding: 50px;
	    font-size: 16px;
	    border-bottom: 1px solid #dddddd;
	    word-break: break-all;
	    /* word-break : 오버플로우 시 줄바꿈관련 css 속성 */
	}
	
	
	
</style>
</head>
<body>
	<div id="header">
		header 영역
	</div>
	<div id="container">
		<div class="cont-title">
			<h1>전체일정</h1>
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
				<%-- 프로그램 설명 영역 --%>
				<div id="programInfoContainer">
					<div id="programInfo">temp: description</div>
				</div>
				
				<%-- 프로그램 타이틀 --%>
				<div class="view-header">
					<div class="veiw-title">temp: title</div>
				</div>			
				
				<%-- 프로그램 본문내용 --%>
				<div class="view-body">
					<table>
					
					</table>
					
					<div class="text-area">
					</div>
					
					<div id="noticeBox">
					</div>
					
					<div id="commentArea">
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<div id="footer">
	
	</div>
	<script type="text/javascript">
	
	</script>
</body>
</html>