/**
 * 
 */

function solution(array, commands) {
	var answer = [];
    for(i=0; i<commands.length; i++){
		var temp=commands[i];
		var repo=[];
		for(j=0; j<array.length; j++){
			if(j>=temp[0]-1 && j<=temp[1]-1){
				repo.push(array[j]);
			}		
		}
		
		repo.sort(function compareNumbers(a, b) {
		  return a - b;
		});
		answer.push(repo[temp[2]-1]);
	}

    return answer;
}