<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
#container {
	text-align: center;
}

.error {
	color: red;
	display: none;
}

.on {display: block;}

#inputTest:focus {
	outline-color: red;
}

</style>
</head>
<body>
	<div id="container">
		<p>DomtokenList test</p>
		<button type="button" onclick="toggleFn();">for toggle</button>
		<div class="error" id="msg">토글기능 테스트</div>
		
		<label for="inputTest">test</label>
		<input type="text" id="inputTest">
		<div class="error" id="inputMsg">글자를 입력해주세요</div>
	</div>

	<script type="text/javascript">
	
	/*
		classList(tokenList)에서 add(), remove(), toggle() 메소드 사용 가능..
	*/
	
	function toggleFn(){
		document.getElementById("msg").classList.toggle("on");
		// $("#msg").toggle();
	}
	
	function select(){
		
		// document.getElementById("inputTest").style.borderColor="red";
		document.getElementById("inputMsg").classList.toggle("on");
		
	}
	
	// input - focus, blur (선택되었을 때 vs 선택되지 않았을 때) 
	document.getElementById("inputTest").onfocus=function(){
		document.getElementById("inputMsg").style.display="block";
	};
	
	document.getElementById("inputTest").onblur=function(){
		document.getElementById("inputMsg").style.display="none";
	};
	
	/*
	$("#inputTest").focus(function(){
		$("#inputMsg").toggle();
	})
	*/
	</script>
</body>
</html>