<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
.container {
	text-align: center;
	position: relative;
	height: 100px;
}

.container button {
	display: inline-block;
}

.error {
	color: red;
	display: none;
	position: relative;
	background: white;
}

.on {display: block;}

#jsContainer {
	width: 200px;
	margin: 0 auto;
	
}


.second-sample {
	background: #C0C0C0;
	
}

</style>
</head>
<body>
	<div class="container">
		<p>DomtokenList test</p>
		<button type="button" onclick="javaScript();">javascript</button>
		
		<div class="default error" id="msg">JS toggle test</div>
	</div>	
	
			<%-- ============================ 스크립트영역 for javascript =================== --%>
			<script type="text/javascript">
			// show & hide
			function javaScript(){
				document.getElementById("msg").classList.toggle("on");
			}
			</script>
			<%-- ============================ 스크립트영역 =================================== --%>
	
	<hr style="margin-bottom: 30px;">
	
	<div class="container">
		<button type="button" onclick="jQuery();">jQuery</button>
		
		<div class="default error" id="inputMsg">jQuery toggle test</div>
	
	</div>
			<%-- ============================ 스크립트영역 for jQuery ======================= --%>
			<script type="text/javascript">
			// show & hide
			function jQuery(){
				$("#inputMsg").toggle();
			}
			</script>
			<%-- ============================ 스크립트영역 =================================== --%>
	
	
	<hr style="margin-bottom: 30px;">

	<div class="container" id="jsContainer">
		<button type="button" onclick="javaScriptTwo();">JS second</button>
		
		<div class="default error" id="secondJS">JS 두번째 예시</div>
	
	</div>
			<%-- ============================ 스크립트영역 for javascript two ================ --%>
			<script type="text/javascript">
			// show & hide
			function javaScriptTwo(){
				document.getElementById("secondJS").classList.toggle("on");
				document.getElementById("jsContainer").classList.toggle("second-sample");
			}
			</script>
			<%-- ============================ 스크립트영역 =================================== --%>
	
	
	

</body>
</html>