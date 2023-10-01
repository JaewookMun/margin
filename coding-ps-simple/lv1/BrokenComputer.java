package practice.goorm.lv1;

import java.io.*;


class Typing {
	public int n;		//�Է��� ������ ��
	public int c;	//�ڵ尡 �������� �ʰ� �����Ǵ� �ð�
	
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