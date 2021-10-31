<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>temp</title>
<style type="text/css">
	
	#header {text-align: center;}
	
	#container {
		width: 500px;
		margin: 0 auto;
		margin-top: 120px;
	}
	
	#listCont ul {
		list-style: none;
	}
	
	#listCont li {
		border: 1px solid black;
		height: 30px;
		user-select: none;
	}
	
	#listCont ul button {
		width: 50px;
	
	}
	
	.hidden {
		display: none !important;
	}
	
	#listCont div {
		display: inline-block;
	}
	
	/* 
	#listCont span:hover {
		cursor: grab;
	}
	*/

	.not-selectable {
		color: #E6E6FA;
	}
</style>
</head>
<body>
	<div id="header"></div>
	
	<div id="container">
		<h1>ojt project test Page</h1>
		
		<div id="listCont">
			<ul ondragover="allowDrop();" ondrop="dropItem(event);">
				<li ondragstart="dragStart(event);" draggable="true" ondragend="dragEnd(event)">
					<div name="edit-container" class="hidden">
						<%-- show/hide 아이콘 - png일 것으로 예상됨. --%>
						<button id="listBtn1" onclick="listToggle(1);">hide</button>
						<span>
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
							</svg>
							이동
						</span>
					</div>
					<div style="margin-left: 10px;">|&nbsp;test1</div>
				</li>
				<li draggable="true">
					<div name="edit-container" class="hidden">
						<button id="listBtn2" onclick="listToggle(2);">hide</button>
						<span>
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
							</svg>
							이동
						</span>
					</div>
					<div style="margin-left: 10px;">|&nbsp;test2</div>
				</li>
				<li draggable="true">
					<div name="edit-container" class="hidden">
						<button id="listBtn3" onclick="listToggle(3);">hide</button>
						<span>
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
							</svg>
							이동
						</span>
					</div>
					<div style="margin-left: 10px;">|&nbsp;test3</div>
				</li>
				<li draggable="true">
					<div name="edit-container" class="hidden">
						<button id="listBtn4" onclick="listToggle(4);">hide</button>
						<span>
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
  								<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
							</svg>
							이동
						</span>
					</div>
					<div style="margin-left: 10px;">|&nbsp;test4</div>
				</li>
			</ul>
		</div>
		<div>
			<button id="editBtn" onclick="toggleEditingMode();">편집모드</button>
			<div id="editActionCont" class="hidden">
				<button id="completeBtn">완료</button>
				<button id="cancelBtn" onclick="toggleEditingMode();">취소</button>
			</div>
		</div>
	</div>
	
	<div id="footer"></div>
	
	<script type="text/javascript">
		function listToggle(n){
			var btnEle=document.getElementById("listBtn"+n);
			var liClassList=document.getElementById("listBtn"+n).parentElement.parentElement.classList;
			
			if(!liClassList.contains("not-selectable")){
				btnEle.textContent="show";
				btnEle.nextElementSibling.addEventListener("mouseover", function(){
					this.style.cursor="auto";
				
				});
				
				liClassList.add("not-selectable");
				
			} else if(liClassList.contains("not-selectable")){
				btnEle.textContent="hide";
				btnEle.nextElementSibling.addEventListener("mouseover", function(){
					this.style.cursor="grab";
				
				});
				liClassList.remove("not-selectable");	
			}
			
		}
	
		function toggleEditingMode(){
			document.getElementById("editBtn").classList.toggle("hidden");
			document.getElementById("editActionCont").classList.toggle("hidden");
			
			var elementList=document.getElementsByName("edit-container");
			for(i=0; i<elementList.length; i++){
				elementList.item(i).classList.toggle("hidden");
				elementList.item(i).firstElementChild.nextElementSibling.addEventListener("mouseover", function(){
					this.style.cursor="grab";
					
				});
			}
		}
		
		
		// 드래그 앤 드롭
		allowDrop = function() {
			event.preventDefault();
		};
		

		dropItem = function() {
			var _targetEle = event.target;
			var _id = event.dataTransfer.getData('text');
			var _moveEle = document.getElementById(_id);
			_targetEle.before(_moveEle);
		};

		dragStart = function() {
			var _thisEle = event.target;
			var _thisId = _thisEle.id;
			_thisEle.classList.add('is-dragging');
			event.dataTransfer.setData('text/plain', _thisId);
		};

		dragEnd = function() {
			var _thisEle = event.target;
			_thisEle.classList.remove('is-dragging');
		};
	</script>
	
</body>
</html>