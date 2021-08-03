<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	


%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DEMAR4 디마르 4 공식몰</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">

	body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, 
	pre, code, form, fieldset, legend, textarea, p, blockquote, th, td, input, select, textarea, button {
	    margin: 0;
	    padding: 0;
	    font-family: 'minerva-modern' , 'Noto Sans KR', sans-serif;
	    font-weight: 400;
	}
	
	/******************************/
	.temp-header, .temp-footer {
		border: 1px solid black;
		padding: 10px;
		margin: 10px;
		text-align: center;
	}
	
	.content {
		width: 1300px;
		margin: auto;
	}
	.item_display_list {
		margin: auto;
		width: 1100px;
	}
	
	.item_display_list ul {
		list-style: none;
		padding-left: 0px;
		text-align: center;
	}
	
	.item_display_list li {
		display: inline-block;
	}
	
	.item_box {
		width: 244px;
		padding: 0 10px;
   		text-align: center;
    	color: #1c1c1c;
	}
	
	.imgSize {
		width: 264px;
		height: 335px;
	}
	
	/* 상단 accordian (카테고리) 부분 */
	.accordion-item {
		border: none;
	}
	
	.accordion-header {
		padding-bottom: 20px;
		border-bottom: 1px solid #e2e2e2;
		padding-left: 14%;
	}
	
	.inner-top {
		width: 1130px;
	    margin: 0 auto;
	    position: relative;
	   
	}
	
	/* 필터 닫기/열기 */
	#accordionBtn {
		display: inline-block;
		width: 110px;
		background: none;
		color: #9b9393;
		box-shadow: none;
		text-align: center;
		font-size: 16px;
		position: absolute;
	    right: 12.8%;
  		top: 50px;
	}

	#accordionBtn::after {
		color: black;
		position: absolute;
		top: 50%;
		right: 0px;
	    font-family: "FontAwesome";
	    background: url("<%=request.getContextPath()%>/goods/images/layout/ico_category_cursor2.png");
	    width: 12px;
	    height: 6px;
	}
	
	#accordionBtn:not(.collapsed) #openFilter { display:none; }
	#accordionBtn.collapsed #closeFilter { display:none; }
	
	
	/* 카테고리 영역내부 */
	.outContainer {
	}
	
	#accordionContatiner {
		background: #f8f8f8;
		border-bottom: 1px solid #e2e2e2;
		border-bottom-right-radius: 0;
   		border-bottom-left-radius: 0;
   		padding: 40px 0 30px 0;
	}
	
	#accordionContatiner dl {
		padding-left: 14%;
		font-size: 13px;
	}
	/* 전체 상품선택 */
	.totalChoose {
		vertical-align: 11px;
		
	}
	
	/*checkbox*/
	/*
	input[id="allCategory"] {
		display: none;
	}
	*/
	#allCategory {
		visibility: hidden;
	}
	#totalMark {
	    position: relative;
	    top: 0;
	    right: 73px; /*90px*/
	    margin: 0;
	    width: 100px;
	    height: 32px;
	    display: inline-block;
	    background: url(<%=request.getContextPath()%>/goods/images/layout/ico_all_check_on.png) no-repeat 0 0;
	}
	
	.title {
		vertical-align: top;
		position: relative;
	    color: #b9b9b9;
	    font-size: 13px;
		left: 58%;
		
	    /*right: 12.8%;
	    top: 160px;*/
	}
	
	.category_dl dt, dd {
		display: inline;
	}
	

	.checkcontainer:hover {
		color: #d28521;
		cursor: pointer;
	}
	

	
	/* 선택상품 보기 버튼 */
	.categorySelect {
		width: 190px;
	    height: 48px;
	    border: 1px solid #000;
	    background: #000;
	    font-size: 14px;
	    font-weight: 500;
	    color: #fff;
	    line-height: 48px;
	    margin: 50px auto 0;
	    display: block; 
	    transition: all 0.3s ease-out;
	}

	.categorySelect:hover {
    	background: #fff;
    	color: #000;
	}	
	
</style>
</head>
<body>
	<div class="temp-header">temp-header</div>
	
	<div class="accordion" id="accordionPanel">
		<div class="accordion-item">
			<div class="accordion-header" id="panelsStayOpen-headingOne">
				<div class="innerTop">
					<span>Shop ></span>
					<span> 전체</span>
					
					<button id="accordionBtn"
						class="accordion-button" type="button" data-bs-toggle="collapse"
						data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
						aria-controls="panelsStayOpen-collapseOne">
						<span id="closeFilter">필터닫기</span>
						<span id="openFilter">필터열기</span>
					</button>
				</div>	
			</div>
			<div id="panelsStayOpen-collapseOne"
				class="accordion-collapse collapse show outContainer" aria-labelledby="panelsStayOpen-headingOne">
				<div class="accordion-body" id="accordionContatiner">
					<form action="<%= request.getContextPath() %>/goods/shop_test.jsp"
						name="categoryForm" id="categoryForm" method="post">
						<dl class="all category_dl">
	                        <dt>
	                            <label class="checkcontainer on" for="allCategory">
	                                <span class="totalChoose" id="totalChoose">전체상품</span>
	                                	<input type="checkbox" id="allCategory" checked="checked" name="ALL" value="all">
	                                <span id="totalMark"></span>
	                            </label>
								<span class="title v-line">※ 카테고리 별로 중복체크가능</span>
	                        </dt>
	                    </dl>                   
	                     <dl class="category_dl js-cate-009">
	                        <dt>효능별</dt>
	                        <dd>
	                            <label class="checkcontainer" for="category009009">
	                                <input type="checkbox" id="category009009" name="goodsType[]" value="009009"  data-cate-nm="토탈솔루션"  >
	                                <span>토탈솔루션</span>
	                                <span class="checkmark"></span>
	                            </label>
	                            <label class="checkcontainer" for="category009003">
	                                <input type="checkbox" id="category009003" name="goodsType[]" value="009003"  data-cate-nm="주름/탄력"  >
	                                <span>주름/탄력</span>
	                                <span class="checkmark"></span>
	                            </label>
	                            <label class="checkcontainer" for="category009004">
	                                <input type="checkbox" id="category009004" name="goodsType[]" value="009004"  data-cate-nm="etc"  >
	                                <span>etc</span>
	                                <span class="checkmark"></span>
	                            </label>
	                        </dd>
	                    </dl>
	                    <dl class="category_dl js-cate-008">
	                        <dt>유형별</dt>
	                        <dd>
	                            <label class="checkcontainer" for="category008009">
	                                <input type="checkbox" id="category008009" name="goodsType[]" value="008009"  data-cate-nm="특가기획전"  >
	                                <span>특가기획전</span>
	                                <span class="checkmark"></span>
	                            </label>
	                            <label class="checkcontainer" for="category008001">
	                                <input type="checkbox" id="category008001" name="goodsType[]" value="008001"  data-cate-nm="토너/크림"  >
	                                <span>토너/크림</span>
	                                <span class="checkmark"></span>
	                            </label>
	                            <label class="checkcontainer" for="category008003">
	                                <input type="checkbox" id="category008003" name="goodsType[]" value="008003"  data-cate-nm="앰플/세럼"  >
	                                <span>앰플/세럼</span>
	                                <span class="checkmark"></span>
	                            </label>
	                        </dd>
	                    </dl>
		                <button type="submit" class="categorySelect">선택상품 보기</button>
	                </form>
				</div>
			</div>
		</div>
	</div>

	<div class="content">
		<div class=item_display_list>
			<ul>
				<li>
					<div class="item_box">
						<div class="item_photo_box">
							<a>
								<img src="<%= request.getContextPath() %>/goods/images/goods_list60.png" class="imgSize" alt="">
							</a>
						</div>
						<div class="item_info_box">
							문제성 지성
						</div>
						<div class="item_title_box">
							문제성 지성 시타 듀 멀티세트
						</div>
						<div class="item_money_box">
							₩ 128,700
						</div>
					</div>
				</li>
				<li>
					<div class="item_box">
						<div class="item_photo_box">
							<a>
								<img src="<%= request.getContextPath() %>/goods/images/goods_list60.png" class="imgSize" alt="">
							</a>
						</div>
						<div class="item_info_box">
							문제성 지성
						</div>
						<div class="item_title_box">
							문제성 지성 시타 듀 멀티세트
						</div>
						<div class="item_money_box">
							₩ 128,700
						</div>
					</div>
				</li>
				<li>
					<div class="item_box">
						<div class="item_photo_box">
							<a>
								<img src="<%= request.getContextPath() %>/goods/images/goods_list60.png" class="imgSize" alt="">
							</a>
						</div>
						<div class="item_info_box">
							문제성 지성
						</div>
						<div class="item_title_box">
							문제성 지성 시타 듀 멀티세트
						</div>
						<div class="item_money_box">
							₩ 128,700
						</div>
					</div>
				</li>
				<li>
					<div class="item_box">
						<div class="item_photo_box">
							<a>
								<img src="<%= request.getContextPath() %>/goods/images/goods_list60.png" class="imgSize" alt="">
							</a>
						</div>
						<div class="item_info_box">
							문제성 지성
						</div>
						<div class="item_title_box">
							문제성 지성 시타 듀 멀티세트
						</div>
						<div class="item_money_box">
							₩ 128,700
						</div>
					</div>
				</li>
				<li>
					<div class="item_box">
						<div class="item_photo_box">
							<a>
								<img src="<%= request.getContextPath() %>/goods/images/goods_list60.png" class="imgSize" alt="">
							</a>
						</div>
						<div class="item_info_box">
							문제성 지성
						</div>
						<div class="item_title_box">
							문제성 지성 시타 듀 멀티세트
						</div>
						<div class="item_money_box">
							₩ 128,700
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="temp-footer">temp-footer</div>
	
<script type="text/javascript">
	
	
	$("#allCategory").change(function() {
		if(!$(this).is(":checked")) {
			$("#totalChoose").css("color", "black");
			$("#totalMark").css("visibility", "hidden");
			
		} else if($(this).is(":checked")) {
			$("#totalMark").css("visibility", "visible");
			$("#totalChoose").css("color", "#d28521");
			$(".checkcontainer").children().prop("checked", false);
		}
		
		// visibility: visible;
	});
	
</script>

</body>
</html>