package practice.goorm.lv3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class BinarySearch {
	public static void main(String[] args) throws NumberFormatException, IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int length = Integer.parseInt(br.readLine());
		String[] sequence = new String[length]; 
			sequence = br.readLine().split(" ");
		int y = Integer.parseInt(br.readLine());
		
		boolean condition = false;
		
		for(int i=0; i<sequence.length; i++) {
			if(Integer.parseInt(sequence[i]) == y) {
				System.out.println(i+1);
				condition = true;
			} 
		}
		if(!condition) {
			System.out.println("X");
		}
		
		
		
	}
}
