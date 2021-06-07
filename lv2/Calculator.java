package practice.goorm.lv2;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Calculator {
	public static void main(String[] args) throws IOException {
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		
		String calcs=in.readLine().replaceAll(" ", "");
		
		String[] operators= {"+","-","*","/"};
		String operator=null;
		for(int i=0; i<operators.length; i++) {
			if(calcs.indexOf(operators[i])!=-1) {
				operator = operators[i];
				break;
			}
		}
		int eleA=Integer.parseInt(calcs.substring(0, calcs.indexOf(operator)));
		int eleB=Integer.parseInt(calcs.substring(calcs.indexOf(operator)+1));
		
		int result=0;
		double resultD=0;
		switch(operator) {
		case "+": result= eleA + eleB; break;
		case "-": result= eleA - eleB; break;
		case "*": result= eleA * eleB; break;
		case "/": resultD= Math.round(100*(eleA/(eleB*1.0)))/100.; break;
		}
		
		if(resultD != 0) {
			System.out.println(resultD);
			System.exit(0);
		}
		
		System.out.println(result);
		
	}
}
