<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AJAX</title>
<style type="text/css">
#header {
	text-align: center;
}

#info {
	text-align: center;
}
</style>
</head>

<body>
	<div id="header">상한가 정보</div>
	<div id="info"></div>
	
	<script type="text/javascript">
	var xhr=null;
	
	function getXmlHttpRequest(){
		if(window.ActiveXObject){
			try{
				return new ActiveXObject("msxml12.XMLHTTP");
			} catch (e){
				try {
					return new ActiveXObject("Microsoft.XMLHTTP");
				} catch(e){
					return null;
				}
			}
		} else if(window.XMLHttpRequest){
			return new XMLHttpRequest();
		} else {
			return null;
		}
	}
	
	document.getElementById("header").onmouseover=function(){
		xhr=getXmlHttpRequest();
		xhr.onreadystatechange=viewStock;
		
		xhr.open("GET", "price_limit_xml");
		xhr.send(null);
	}
	
	function viewStock(){
		if(xhr.readyState==4){
			if(xhr.status==200){
				var xmlDoc=xhr.responseXML;
				var stockList=xmlDoc.getElementsByTagName("stock");
				
				var html="<ul>"
				for(i=0; i<stockList.length; i++){
					var name=stockList[i]
				}
			} else {
				document.getElementById("info").innerHTML="에러 코드 = "+xhr.status;
			}
		}
		
	}
	
	
	</script>
</body>
</html>