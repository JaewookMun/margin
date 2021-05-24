package goorm;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class locationMulVer2 {

	public static void main(String[] args) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int input = Integer.parseInt(br.readLine());
		int start = (int)Math.pow(10, (int)Math.log10(input)-1);
		long result=0l;
		
		long t1 = System.nanoTime();
		loopTemp:
			for(int i= start; i<=input; i++) {
				int num=i;
				long times=1l;
				
				while(num != 0) {
					int temp =(num%10);
					if(temp == 0)
						continue loopTemp;
					times *= (num%10);
					num /= 10;
				}
				if(times<=result) continue;
				result=times;
			}
		
		long t2=System.nanoTime();
		System.out.println(result);
		System.out.println(t2-t1);
	}
}
