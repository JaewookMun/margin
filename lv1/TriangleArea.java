package practice.goorm.lv1;

import java.io.*;

/*
 * input = {{a,b},{c,d},{e,f}}
 * S = ((value[0][0]*value[1][1]+value[1][0]*value[2][1]+value[2,0]*value[0][1])-(value[1][0]*value[0][1]+value[2][0]*value[1,1]+value[0][0]*value[2][1]))/2
 */

public class TriangleArea {
	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		String[][] input = new String[3][2];
		double[][] value = new double[3][2];
		
		for(int i=0; i<3; i++) {
			input[i]=br.readLine().split(" ");
		}
		

		for(int i=0; i<3; i++) {
			for(int j=0; j<2; j++) {
				value[i][j] = Double.parseDouble(input[i][j]);
			}
		}

		double triArea = ((value[0][0]*value[1][1]+value[1][0]*value[2][1]+value[2][0]*value[0][1])-(value[1][0]*value[0][1]+value[2][0]*value[1][1]+value[0][0]*value[2][1]))/2;
		double result = Math.round(100*triArea)/100.;

		System.out.printf("%.2f\n", result);
		
		
	}
}
