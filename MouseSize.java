package practice.goorm;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

//[x-2, x+2]±¸°£ -> 
public class MouseSize {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int num =Integer.parseInt(br.readLine());
		String[] placeA = br.readLine().split(" ");
		String[] placeB = br.readLine().split(" ");
		
		int[] sizeA=new int[num];
		int[] sizeB=new int[num];
		
		
		for(int i=0; i<sizeA.length; i++) {
			sizeA[i]=Integer.parseInt(placeA[i]);
		}
		for(int i=0; i<sizeB.length; i++) {
			sizeB[i]=Integer.parseInt(placeB[i]);
		}
		
		int avgA = 0;
		int avgB = 0;
		for(int i : sizeA) {
			avgA +=i;
		}
		for(int i : sizeB) {
			avgB +=i;
		}
		System.out.println(avgA/sizeA.length+", "+avgB/sizeB.length);
		
	}
}
