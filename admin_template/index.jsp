<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<!-- 
	************************************************************************************************************
	* 프로젝트명(Context name): margin
	* 
	* admin - Toy project
	* 
	* 
	* @author JaewookMun
	************************************************************************************************************
	-->
<% 
	request.setCharacterEncoding("utf-8");
	String category=request.getParameter("category");
	String link=request.getParameter("link");
	
	String contentFilePath="";
	if(category==null || link==null){
		category="";
		contentFilePath="/admin_template/home.jsp";
	} else {
		contentFilePath="/admin_template/sys/"+category+"/"+link+".jsp";
	}
	

%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Margin</title>
	<link rel="icon" href="/margin/admin_template/images/info.png">
	
	<!-- jQuery CDN -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- bootstrap CDN - CSS, JavaScript -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	
	<!-- 구글폰트 - 영어(조이름(samjo)에 적용) -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Festive&display=swap" rel="stylesheet">
	
	<!-- 한글(sidebar subListItem에 적용) -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
	
	<!-- CSS 적용 -->
	<link rel="stylesheet" href="/margin/admin_template/setting/style.css">
</head>

<body>
	<!-- sidebar & navbar     -->
	<div class="row container-fluid mx-0 px-0 fixed-top" id="outline">
		<!-- sidebar (좌측화면) -->
		<div class="col-md-2 sidebar mx-0">
			<a href="/margin/admin_template/index.jsp" class="text-dark text-decoration-none text-center fs-2 d-block mx-auto" id="jGroup-name">
				<span class="group-name">margin</span>
			</a>
			<ul class="list-group">
				<li class="upperList">
					<button type="button" class="listBtn" id="listBtn1" onclick="memberClick();"
						data-bs-toggle="collapse" data-bs-target="#memberCollapse" aria-expanded="false" aria-controls="memberCollapse">
							Member
					</button>
					<div class="collapse" id="memberCollapse">
						<ul class="list-group">
							<li class="subListItem align-items-center"><a href="/margin/admin_template/index.jsp?category=member&link=member1">회원 주소록</a></li>
							<li class="subListItem"><a href="#">(Null)</a></li>
							<li class="subListItem"><a href="#">(Null)</a></li>
						</ul>
					</div>
				</li>
				<li class="upperList">
					<button type="button" class="listBtn" id="listBtn2" onclick="productsClick();"
						data-bs-toggle="collapse" data-bs-target="#productsCollapse" aria-expanded="false" aria-controls="productsCollapse">
							Products
					</button>
					<div class="collapse" id="productsCollapse">
						<ul class="list-group">
							<li class="subListItem"><a href="/margin/admin_template/index.jsp?category=products&link=products1">상품등록</a></li>
							<li class="subListItem"><a href="#">상품 정보 관리</a></li>
							<li class="subListItem"><a href="#">(Null)</a></li>
						</ul>
					</div>
				</li>
				<li class="upperList">
					<button type="button" class="listBtn" id="listBtn3" onclick="boardClick();"
						data-bs-toggle="collapse" data-bs-target="#boardCollapse" aria-expanded="false" aria-controls="boardCollapse">
							Board
					</button>
					<div class="collapse" id="boardCollapse">
						<ul class="list-group">
							<li class="subListItem"><a href="/margin/admin_template/index.jsp?category=board&link=board1">공지사항</a></li>
							<li class="subListItem"><a href="#">회원리뷰</a></li>
							<li class="subListItem"><a href="#">FAQ문의</a></li>
						</ul>
					</div>
				</li>
				<li class="upperList">
					<button type="button" class="listBtn" id="listBtn4" onclick="paymentClick();"
						data-bs-toggle="collapse" data-bs-target="#paymentCollapse" aria-expanded="false" aria-controls="paymentCollapse">
							Payment
					</button>
					<div class="collapse" id="paymentCollapse">
						<ul class="list-group">
							<li class="subListItem"><a href="/margin/admin_template/index.jsp?category=payment&link=payment1">고객결제내역</a></li>
							<li class="subListItem"><a href="#">(Null)</a></li>
							<li class="subListItem"><a href="#">(nNull)</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		
		<!-- admin main -->
		<div class="col-md-10 ml-auto navbar-nav" id="rightPanel">

			<!-- top navbar -->
			<div class="row jNavbar">
				<div class="col">
					<h4 class="mb-0 py-2 mx-2">DashBoard</h4>
				</div>
				<div class="col"></div>
				<div class="col" style="text-align: right" id="col3">

					<!-- 쇼핑몰 페이지로 이동 -->
					<a href="/margin/index.jsp" data-bs-toggle="tooltip" data-bs-placement="bottom" title="쇼핑몰">
						<i class="bi bi-house">
							<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
								<path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
								<path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
							</svg>
						</i>
					</a>

					<!-- 관리자 계정 로그아웃 -->
					<a href="javascript:adminLogout();" data-bs-toggle="tooltip" data-bs-placement="bottom" title="로그아웃">
						<i class="bi bi-box-arrow-right">
							<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
								<!-- path 태그는 icon을 위해 필요한 태그입니다. -->
								<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
								<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
							</svg>
						</i>
					</a>
				</div>
			</div>
			
			<div class="navbar-nav-scroll" id="contents-container">
				<div class="container">
				<!-- content -->
					<jsp:include page="<%= contentFilePath %>"></jsp:include>

				<!-- content end -->
				</div>
				<div class="card-body" id="content-footer">
					<div class="row d-flex align-items-center">
						<div class="col-3">
							<p>ⓒ 2021 - <span style="font-weight: bold; font-size: 11px;">toy project</span>
								. All Rights Reserved. </p>
						</div>
						<div class="col-9" style="text-align: right;">
							<p>Contact team leader, <span style="font-style: italic;">Margin</span>&nbsp;,&nbsp;for design</p>
						</div>
					</div>
				</div>
				<%-- <script type="text/javascript" src="/margin/admin_template/setting/common.js"></script> --%>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	var category = "<%= category %>";
		
	if(category == "member") {
		$("#listBtn1").attr("aria-expanded", "true");
		$("#memberCollapse").addClass("show");
	}
	
	if(category == "products") {
		$("#listBtn2").attr("aria-expanded", "true");
		$("#productsCollapse").addClass("show");
	}
	
	if(category == "board") {
		$("#listBtn3").attr("aria-expanded", "true");
		$("#boardCollapse").addClass("show");
	}
	
	if(category == "payment") {
		$("#listBtn4").attr("aria-expanded", "true");
		$("#paymentCollapse").addClass("show");
	}
	</script>
	
	</body>
</html>