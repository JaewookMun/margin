package practice.goorm;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;

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
		
		Arrays.sort(sizeA);
		Arrays.sort(sizeB);
		
		ArrayList<Integer> range = new ArrayList<Integer>();

		int temp=0, x=0;
		for(int i=sizeA[0]; i<=sizeA[sizeA.length-1]; i++) {
			range.clear();
			for(int j=0; j<sizeA.length; j++) {
				if(sizeA[j]>=(i-2) && sizeA[j]<=(i+2)) {
					range.add(sizeA[j]);
				}
				else continue;
			}
			if(range.size()<temp) continue;
			else {
				temp=range.size();
				x=i;
			}
		}
		
		temp = 0; 
		int y=0;
		
		for(int i=sizeB[2]; i<=sizeB[sizeB.length-3]; i++) {
			range.clear();
			for(int j=0; j<sizeB.length; j++) {
				if(sizeB[j]>=(i-2) && sizeB[j]<=(i+2)) {
					range.add(sizeB[j]);
				}
				else continue;
			}
			if(range.size()<temp) continue;
			else {
				temp=range.size();
				y=i;
			}
		}
		System.out.println(x+" "+y);
		System.out.println(x>y ? "good":"bad");
	}
}
