/**
 * 
 */

function postDelete(){
	var count=0;	
	
	for(var i=0; i<$(".table").children().length-1; i++){
		if(count==0){
			$("<input name='"+i+"box' type='checkbox'>").appendTo("#r\"+(i+1)+\"");
			count++;
			return;
		} else {
			return;
		}
	}
}