/**
 * 
 */

var memberCount=0;
var productsCount=0;
var boardCount=0;
var paymentCount=0;

function memberClick(){
	if(memberCount==0){
		$(".listBtn").attr("aria-expanded", "false");
		$(".collapse").removeClass("show");
		
		$("#listBtn1").attr("aria-expanded", "true");
		$("#memberCollapse").addClass("show");
		memberCount++;
	} else {
		$("#listBtn1").attr("aria-expanded", "false");
		$("#memberCollapse").removeClass("show");
		memberCount--;
	}
}

function productsClick(){
	if(productsCount==0){
		$(".listBtn").attr("aria-expanded", "false");
		$(".collapse").removeClass("show");
		
		$("#listBtn2").attr("aria-expanded", "true");
		$("#productsCollapse").addClass("show");
		productsCount++;
	} else {
		$("#listBtn2").attr("aria-expanded", "false");
		$("#productsCollapse").removeClass("show");
		productsCount--;
	}
}

function boardClick(){
	if(boardCount==0){
		$(".listBtn").attr("aria-expanded", "false");
		$(".collapse").removeClass("show");
		
		$("#listBtn3").attr("aria-expanded", "true");
		$("#boardCollapse").addClass("show");
		boardCount++;
	} else {
		$("#listBtn3").attr("aria-expanded", "false");
		$("#boardCollapse").removeClass("show");
		boardCount--;
	}
}

function paymentClick(){
	if(paymentCount==0){
		$(".listBtn").attr("aria-expanded", "false");
		$(".collapse").removeClass("show");
		
		$("#listBtn4").attr("aria-expanded", "true");
		$("#paymentCollapse").addClass("show");
		paymentCount++;
	} else {
		$("#listBtn4").attr("aria-expanded", "false");
		$("#paymentCollapse").removeClass("show");
		paymentCount--;
	}
}