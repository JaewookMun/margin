package practice.goorm.lv1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class TestScoreApp {
	/*
	 * ���輺�� ��� & ���
	 */
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String input = br.readLine();
		
		// �Է� ���� ���ڿ� ���ڷ� �ٲٱ�.		
		String[] arr = input.split(" ");
		int[] arrInt = new int[arr.length];
		
		for(int i=0; i<arr.length; i++) {
			arrInt[i] = Integer.parseInt(arr[i]);
		}
		int sum=0;
		double avgScore;
		String grade="";
		
		for(int i=0; i<arrInt.length; i++) {
			sum+=arrInt[i];
		}
		avgScore = (double)sum/arr.length;
		
		
		switch ((int)avgScore/10){
		case 10:
		case 9: grade="A"; break;
		case 8: grade="B"; break;
		case 7: grade="C"; break;
		case 6: grade="D"; break;
		default : grade="F"; break;
		}
		// ����ǥ���� & Math.round
		System.out.printf("%.2f %s", Math.round(avgScore*100)/100., grade);
		System.out.println();
		System.out.println(Math.round(avgScore*100)/100.+" "+grade);
		
	}
}
