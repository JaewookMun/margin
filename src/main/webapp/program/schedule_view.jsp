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
	
	.view-body input:focus, .view-body textarea:focus {outline: none;}
	
	.info-table {
		width: 100%;
	    border-collapse: collapse;
	    border-spacing: 0;
	    border-width: 0px;
	    border-style: solid;
	    position: relative;
	    display: inline-block;
	    border: 0px solid red;
	    vertical-align: middle;
	    margin-right: 10px;
	}
	
	.info-table tr{
		width: 100%;
	    height: 36px;
	    font-size: 16px;
	    border-style: solid;
	    border-width: 0px;
	    overflow: hidden;
	    position: relative;
	    word-break: normal;
	    color: #333;
	    border: 0px solid red;
	    padding: 6px;
	}
	
	.info-table .col-01 {
		width: 200px;
	    font-weight: 500;
	    font-size: 15px;
	    line-height: 24px;
	    position: relative;
	    text-align: left;
	    border-bottom: 1px solid #fff;
	    padding: 10px 20px;
	    background: #f3f3f3;
	    vertical-align: middle;
	}
	
	
	.info-table .col-02 {
		width: 700px;
	    font-size: 16px;
	    font-weight: 300;
	    line-height: 24px;
	    position: relative;
	    color: #555;
	    padding: 10px 20px;
	    text-align: middle;
	    border-bottom: 1px solid #f3f3f3;
	    border-right: 1px solid #f3f3f3;
	    vertical-align: middle;
	}
	
	
	
	
	/* 안내사항 박스 */
	#noticeBox {
		width: 100%;
	    height: auto;
	    position: relative;
	    display: inline-block;
	    padding: 20px 30px 16px 30px;
	    margin-top: 10px;
	    background: #fff;
	    border: 1px solid #ddd;
	}
	
	
	/* 참가신청 */
	#participate {
		width: 100%;
	    height: auto;
	    position: relative;
	    display: inline-block;
	    background: #fff;
	    padding: 40px 0px 40px;
	    margin-bottom: 0px;
	    border-bottom: 1px dashed #ddd;
	
	}
	
	.p-area-1, .p-area-2 {
		position: relative;
	    display: inline-block;
	    margin: 0 auto;
	    width: 100%;
	    background: #f7f7f7;
	    padding: 20px;
	    border: 0px solid red;
	
	}
	
	.p-area-1 {
		padding-top: 0px;
	}
	
	.p-area-2 {
		background: #fff;
	    padding: 0px;
	    margin-bottom: 40px;
	}
	
	/*  p1 영역 */
	.partial-area-left {
		width: 47%;
	    height: auto;
	    position: relative;
	    display: inline-block;
	    border: 0px solid red;	
	}
	
	
	.partial-area-right {
		width: 52%;
	    height: auto;
	    position: relative;
	    display: inline-block;
	    float: right;
	    border: 0px solid red;
	    margin-bottom: 6px;
	}
	
	#applyForm {
		width: 100%;
	    height: auto;
	    position: relative;
	    display: inline-block;
	    margin: 0 auto;
	    text-align: center;
	    border: 0px solid red;
	    margin-top: 44px;
	}
	
	
	
	#participate h2, form {display: inline-block;}
	
	#participate span, h3 {
	    line-height: 40px;
	    font-size: 15px;
	    font-weight: 300;
	    border-bottom: 0px solid #78808c;
	    display: inline-block;
	    margin-left: 4px;
	}
	
	#participate input {
		display: inline-block;
	    vertical-align: middle;
	    height: 32px;
	    line-height: 25px;
	    padding: 0 10px;
	    background: #fff;
	    box-sizing: border-box;
	    border: 1px solid #ddd;
	    color: #333;
	    font-weight: normal;
	    width: 56.6px;
	    margin-left: 20px;	
	}
	
	
	
	
	#joinBtn {
		position: relative;
	    display: inline-block;
	    width: 100px;
	    height: 40px;
	    background-color: #78808c;
	    text-align: center;
	    font-size: 15px;
	    color: #fff;
	    line-height: 40px;
	    cursor: pointer;
	    margin-left: 10px;
	    z-index: 10;
	    border: 0px;
	}
	
	#joinBtn:hover {
		background: #08b2f5;
	}
	
	
	.area_subtext {
	    width: 100%;
	    height: auto;
	    line-height: 30px;
	    font-size: 15px;
	    font-weight: 300;
	    position: relative;
	    display: block;
	    padding-left: 20px;
	    margin-top: 20px;
	    text-align: left;
	    border: 0px solid red;
	}
	
	.red_list li {
	    font-size: 15px;
	    font-weight: 300;
	    line-height: 26px;
	    word-break: normal;
	    letter-spacing: -0.2px;
	    color: #444;
	    position: relative;
	    margin-bottom: 6px;
	    padding-left: 1em;
	}
	
	.red_list li:before {
	    content: "·";
	    position: absolute;
	    top: 0;
	    left: 0;
	}
	
	.con_btn02 {
    	width: 140px;
	    height: 22px;
	    font-size: 14px;
	    line-height: 20px;
	    font-weight: 400;
	    text-align: center;
	    position: relative;
	    display: inline-block;
	    color: #fff;
	    background: #08b2f5;
	    border-radius: 15px;
	    cursor: pointer;	
	}
	
	.con_btn02:hover{
		background:#008fe9; 
	}
	
	
	/* 참가신청자 리스트 영역 */
	#applierList {
	    width: 100%;
	    height: auto;
	    position: relative;
	    display: inline-block;
	    outline-style: none;
	    border: 0px solid red;
	    margin: 0 auto;
	    margin-top: 30px;
	    display: flex;
	    flex-wrap: wrap;
	}
	
	
	.sub_bull02:before {
	    position: absolute;
	    display: block;
	    top: 12px;
	    width: 6px;
	    height: 6px;
	    border-radius: 50%;
	    background-color: #08b2f5;
	    content: '';
	}
	
	
	#applierList span {
		font-size: 15px;
	    font-weight: 500;
	    margin-left: 0px;
	    position: relative;
	    display: inline-block;
	    margin-top: -6px;
	    color: #555;
	}
	
	#applierList h3 {
		font-size: 15px;
	    font-weight: 400;
	    margin-left: 0px;
	    color: #08b2f5;
	    position: relative;
	    display: inline-block;
	}
	
	/* 문의 댓글 */
	#commentArea {
	    width: 100%;
	    height: auto;
	    position: relative;
	    display: inline-block;
	    padding: 30px 0px 0px 0px;
	    margin-top: 40px;
	    background: #fff;
	}
	
	.comment_title {
		font-size: 15px;
	    line-height: 18px;
	    font-weight: 500;
	    margin-left: -2px;
	    color: #08b2f5;
	    position: relative;
	}
	
	.comment_input_box {
		width: 100%;
	    margin: 15px 0px 40px 0px;
	    position: relative;
	    display: inline-block;
	}
	
	.comment-box-style {
		width: 80%;
	    height: 60px;
	    border: 1px solid #cccccc;
	    padding-top: 10px;
	    padding-bottom: 10px;
	    padding-left: 10px;
	    margin-bottom: 15px;
	    color: #555;
	    position: absolute;
	    margin-top: -3px;
	    display: inline-block;
	}
	
	#commentBtn {
	    width: 20%;
	    height: 60px;
	    font-weight: 400;
	    font-size: 15px;
	    line-height: 60px;
	    background: #78808c;
	    color: #fff;
	    text-align: center;
	    position: relative;
	    display: inline-block;
	    cursor: pointer;
	    margin-top: -3px;
	    float: right;
	    border: 0px;
	}
	
	#commentBtn:hover {
		background: #08b2f5; 
	}
	
	#commentBox {
		width: 100%;
	    height: auto;
	    position: relative;
	    display: inline-block;
	    margin-bottom: 20px;
	    text-align: left;
	}
	
	#commentBox h2 {
		line-height: 40px;
	    font-size: 15px;
	    font-weight: 500;
	    position: relative;
	    color: #08b2f5;
	    border-bottom: 2px solid #78808c;
	}
	
	#toList {
		font-size: 15px;
	    font-weight: 400;
	    width: 160px;
	    height: 40px;
	    line-height: 40px;
	    text-align: center;
	    color: #fff;
	    background-color: #78808c;
	    position: relative;
	    display: inline-block;
	    margin-top: 30px;
	    cursor: pointer;
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
					<table class="info-table">
						<tr>
							<td class="col-01">코스</td>
							<td class="col-02" style="border-top:1px solid #f3f3f3;"></td>
						</tr>
						<tr>
							<td class="col-01">출발시간</td>
							<td class="col-02"></td>
						</tr>
						<tr>
							<td class="col-01">출발장소</td>
							<td class="col-02"></td>
						</tr>
						<tr>
							<td class="col-01">자원봉사자(인솔자)</td>
							<td class="col-02"></td>
						</tr>
						<tr>
							<td class="col-01">준비물</td>
							<td class="col-02"></td>
						</tr>
					</table>
					
					<div class="text-area">
						<%-- 공지사항 --%>
					</div>
					
					<div id="noticeBox">
						<%-- 안내사항 내용 --%>
					</div>
					
					<div id="participate">
						<div class="p-area-1">
							<div class="partial-area-left">
								<form id="applyForm" name="applyForm" method="post" action="#">
									<h2>
										신청인원
										<span>(본인포함)</span>
									</h2>
									<input type="text" ><span>명</span>
									<button type="button" id="joinBtn">참가신청</button>
								</form>
							</div>
							<div class="partial-area-right">
								<div class="area_subtext">
									<ul class="red_list ">
										<li>참가인원 수는 숫자로만 표기 해 주세요.</li>
										<li>본인 포함 총 2인까지만 동행으로 신청 할 수 있습니다.</li>
										<li>3인 이상 단체는 ‘길동무’를 이용해 주세요.&nbsp;&nbsp;
										<div class="con_btn02" onclick="javascript:location.href='https://www.jejuolle.org/trail/kor/program/with.asp?tabmenu=tab07'">길동무 알아보기&nbsp;&nbsp;&gt; </div></li>
									</ul>
								</div>
							</div>
						</div>
						
						<div class="p-area-2">
							<div id="applierList">
								<div class="sub_bull02">
									<span style="margin-left: 14px;">
										참가 신청자 리스트 / 
									</span>
									<%-- 임시 설정값 --%>
									<h3>현재 참가 신청인원 ${people }명</h3>
								</div>
							</div>
						</div>
					</div>
					
					<div id="commentArea">
						<form action="" style="text-align: left; width: 100%;">
							<h3 class="comment_title">문의 댓글</h3>
							
							<div class="comment_input_box">
								<textarea rows="5" cols="100" name="commentContent" class="comment-box-style" placeholder="댓글을 남기기 위해서는 로그인이 필요합니다." style="resize: none;"></textarea>
								<button type="button" id="commentBtn">등록</button>
							</div>
						</form>
					
						<div id="commentBox">
							<h2>문의 리스트</h2>
						</div>
					</div>
				</div>
				<div style="text-align: left;">
					<a id="toList" href="#">목록으로</a>				
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