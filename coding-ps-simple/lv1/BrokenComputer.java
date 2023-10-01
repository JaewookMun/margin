package practice.goorm.lv1;

import java.io.*;


class Typing {
	public int n;		//입력한 글자의 수
	public int c;	//코드가 지워지지 않고 유지되는 시간
	
	public static int[] parseIntArr(String[] str) {
		int[] arr = new int[str.length];
		for(int i=0; i<str.length; i++) {
			arr[i]=Integer.parseInt(str[i]);
		}
		return arr;
	}
	public static int getNumOfChar(int[] arr, int c) {
		int count = 1;
		for(int i=0, j=1; i<arr.length-1; i++, j++) {
			
			if(arr[j]-arr[i] > c) count=0;
			count++;
		}
		return count;
	}
}	
public class BrokenComputer {
	public static void main(String[] args) throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		
		String[] firstln = br.readLine().split(" ");
		String[] inputSecondln = br.readLine().split(" ");
		
		int[] arrNC = Typing.parseIntArr(firstln);
		int[] arrSeconln = Typing.parseIntArr(inputSecondln);
		
		int numChar=Typing.getNumOfChar(arrSeconln, arrNC[1]);
		System.out.println(numChar);
		
		
	}
}