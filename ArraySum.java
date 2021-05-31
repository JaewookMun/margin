package practice.goorm;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Arrays;

/** 
 * @author Margin
 * 
 * 배열합치기
 * 예) 입력
 * 5 4			// 각각 배열 A, B 요소의 개수	
 * 2 3 6 7 8    // 배열 A
 * 1 8 9 11     // 배열 B
 *
 * 출력
 * 1 2 3 6 7 8 8 9 11 // 각 숫자 뒤에는 " " 공백이 하나씩 들어가야함.
 */


public class ArraySum {

	public static void main(String[] args) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String ip1 = br.readLine();
		String[] ip2 = br.readLine().split(" ");
		String[] ip3 = br.readLine().split(" ");
		int lengA = ip1.charAt(0)-'0';
		int lengB = ip1.charAt(2)-'0';
		
		int[] arrSum = new int[lengA+lengB];
		
		for(int i=0; i<arrSum.length; i++) {
			if(i<lengA) {
				arrSum[i] = Integer.parseInt(ip2[i]);
			} else if(i>=lengA) {
				arrSum[i] = Integer.parseInt(ip3[i-lengA]);
			}
		}
		Arrays.sort(arrSum);
		for(int i : arrSum) {
			System.out.print(i+" ");
		}
		System.out.println();
		
		
		/* 콤마(,)를 생각못하고 toString만 적용하여 오답처리
		String result = Arrays.toString(arrSum);
		System.out.println(result.substring(1, result.length()-1)+" ");
		*/
	}
}
