<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<% 
		String category = request.getParameter("category");
	
	%>
	
    
    
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