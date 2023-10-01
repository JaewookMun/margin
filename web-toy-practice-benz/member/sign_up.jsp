<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
				<li>
					<label for="zipCode">우편번호</label>
					<input type="text" id="zipCode" name="zipCode" readonly="readonly" width="10px">
					<button type="button" onclick="postOpen();">우편번호 찾기</button>
				</li>
				<li>
					<label for="address1">기본 주소</label>
					<input type="text" id="address1" name="address1" readonly="readonly">
				</li>
				<li>
					<label for="address2">상세 주소</label>
					<input type="text" id="address2" name="address2">
				
					<input type="text" id="address3" name="address3" readonly="readonly" placeholder="기타주소">
				</li>
			</ul>
			<div>
				<button type="submit">회원가입</button>
				<button type="reset">다시입력</button>
			</div>
			
		</form>
	</div>
	
<script type="text/javascript">
	function postOpen(){
		new daum.Postcode({
		    oncomplete: function(data) {
                var addr = ''; // 주소 변수
            //    var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
			/*
                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("address3").value = extraAddr;
                
                } else {
                    document.getElementById("address3").value = '';
                }
			*/
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById("zipCode").value = data.zonecode;
                document.getElementById("address1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("address2").focus();
		    	
                
		    }
		}).open();
	}




	
	
	
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