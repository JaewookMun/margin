<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Top 10 Richest People</title>
<link rel="stylesheet" href="style.css">
<script src="https://kit.fontawesome.com/3da1a747b2.js" crossorigin="anonymous"></script>
<style type="text/css">
/*http://devstar21.blogspot.com/2016/06/css-css-disable-text-selection.html*/
.number {
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

</style>
</head>
<body>
	<h1>10 Richest People</h1>
	<p>Drag and drop the items into their corresponding spot</p>
	<ul class="draggable-list" id="draggable-list"></ul>
	<button class="check-btn" id="check">
		Check Order
		<i class="fas fa-papper-plane"></i>
	</button>
	
	<script src="script.js"></script>
</body>
</html>