<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery</title>

<style type="text/css">
	
	#header {text-align: center;}
	
	#container {
		width: 500px;
		margin: 0 auto;
		margin-top: 120px;
	}
	
	.hidden {
		display: none;
	}
	
	#listCont {
		background: red;
	}
	
	#listCont .listItem {
		border: 1px solid black;
		width: 200px;
		height: 30px;
		margin: 5px;
		text-align: center;
		padding-top: 7px;
	}
	
	.listItem:hover {
		cursor: pointer;
	}
	

</style>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script type="text/javascript">
	$( function() {
	    $( "#listCont" ).sortable({
	      revert: true
	    });
	    $( ".listItem" ).draggable({
	      connectToSortable: "#listCont",
	      //helper: "clone",
	      revert: "invalid"
	    });
	    $( "div" ).disableSelection();
  } );
</script>
</head>
<body>
	<div id="header"></div>
	
	<div id="container">
		<h1>ojt project test Page</h1>
		
		<div id="listCont">
			<div class="listItem ui-state-default">
				사과
			</div>
			<div class="listItem ui-state-default">
				딸기
			</div>
			<div class="listItem ui-state-default">
				바나나
			</div>
			<div class="listItem ui-state-default">
				배
			</div>
			<div class="listItem ui-state-default">
				수박
			</div>
		</div>
	</div>
	
	<div id="footer"></div>
	
	
</body>
</html>