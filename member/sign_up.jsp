<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
	.container {
		width: 90%;
		text-align: center;	
		margin-top: 20px;
		margin-bottom: 20px;
	}
	
	ul li {
		list-style-type: none;
		text-align: left;
		padding-left: 25%;
		margin: 20px;
	} 
	label {
		text-align: right;
		margin-right: 10px;	
	}
	.mobile {
		width: 50px;
	}
	
	.error {
		color: red;
		position: relative;
		display: none;
	}

</style>
</head>
<body>
	<div class="container">
		<form id="signUpForm" name="signUpForm" method="post"
			action="<%= request.getContextPath() %>/member/sign_up_action.jsp">
			<p>회원 가입</p>
			<ul>
				<li>
					<label for="id">아이디</label><input type="text" id="id" name="id">
					<div class="error" id="idMsg">아이디를 입력해주세요.</div>
					<div class="error" id="idRegMsg">아이디를 형식에 맞추어 입력해주세요.</div>
				</li>
				<li>
					<label for="password">비밀번호</label>
					<input type="password" id="password" name="password">
					<div class="error" id="passwdMsg">비밀번호를 입력해주세요.</div>
					<div class="error" id="passwdRegMsg">비밀번호는 영어와 숫자가 들어간 6~10자리의 문자만 가능합니다.</div>
				</li>
				<li>
					<label for="name">이름</label><input type="text" id="name" name="name">
					<div class="error" id="nameMsg">이름을 입력해주세요.</div>
				</li>
				<li>
					<label for="phone1">전화번호</label>
					<input type="text" class="mobile" id="phone1" name="phone1">&nbsp;-&nbsp;
					<input type="text" class="mobile" id="phone2" name="phone2">&nbsp;-&nbsp;
					<input type="text" class="mobile" id="phone3" name="phone3">
					<div class="error" id="mobileMsg">전화번호를 입력해주세요.</div>
				</li>
			</ul>
			<div>
				<button type="submit">회원가입</button>
				<button type="reset">다시입력</button>
			</div>
			
		</form>
	</div>
	
<script type="text/javascript">

	$("#signUpForm").submit(function(){
		
		var submitResult=true;
		
		
		signUpForm.action="<%= request.getContextPath() %>"+"/member/sign_up_action.jsp";
		
		$(".error").css("display","none");
		
		var idReg=/^[a-zA-Z]\w{5,19}$/g;
		if($("#id").val()=="") {
			$("#idMsg").css("display","block");
			submitResult=false;
		} else if(!idReg.test($("#id").val())) {
			$("#idRegMsg").css("display","block");
			submitResult=false;
		}	
		
		// var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9]).{5,10}$/;
		if($("#passwd").val()=="") {
			$("#passwdMsg").css("display","block");
			submitResult=false;
		}/* else if(!passwdReg.test($("#passwd").val())) {
			$("#passwdRegMsg").css("display","block");
			submitResult=false; 
		}*/
		
		if($("#name").val()=="") {
			$("#nameMsg").css("display","block");
			submitResult=false;
		}
		
		if($("#phone1").val()=="" || $("#phone2").val()=="" || $("#phone3").val()=="") {
			$("#mobileMsg").css("display","block");
			submitResult=false;
		}
		
		return submitResult;	
	});
</script>
</body>
</html>