package practice.goorm.lv1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;

/*
 * the capacity of Ram is 'powers of 2'
 * search the ram whose capacity is not 'powers of 2' among over 100
 * the number of ram and index
 * 
 * <questions>
 * 1st line : the number of ram
 * 2nd line : capacity 
 * 
 * <answer>
 * 1st : the number of broken ram
 * 2nd : the index of them
 * if there is no broken ram, just 0 
 */

public class BrokenRam {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int ramNumber = Integer.parseInt(br.readLine());
		String[] capacities = br.readLine().split(" ");
		// int[] capa = new int[count];
				
		int count=0;
		ArrayList<Integer> indexList=new ArrayList<Integer>();
		for(int i=0; i<ramNumber; i++) {
			double number = Double.parseDouble(capacities[i]);
			double calcResult = Math.log(number)/Math.log(2);
			if(calcResult-(int)calcResult!=0) {
				count++;
				indexList.add(i);
			}
		}
		System.out.println(count);
		System.out.println(indexList.toString().substring(1, indexList.toString().length()-1));	
	}
}
