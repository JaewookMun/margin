package practice.goorm.lv1;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class SnakePath {
	public static void main(String[] args) throws IOException {
		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		String[] inputs = in.readLine().split(" ");
		int row = Integer.parseInt(inputs[0]);
		int column = Integer.parseInt(inputs[1]);
		
		//
		// ����� ���Ǹ� ���� i, j�� ���� 1�� �ʱ�ȭ
		//2, 6, 10, 14, 18, ... : 4n-2
		//4, 8, 12, 16, 20, ... : 4n
		// > ���� ������ �� ����.

		
		for(int i=1; i<=row; i++) {
			for(int j=1; j<=column; j++) {
				if(i%2 != 0) {
					System.out.print("#");
				}else if(i%4 == 2) {
					if(j==column) {
						System.out.print("#");
					} else
						System.out.print(".");
				}else if(i%4==0) {
					if(j==1) {
						System.out.print("#");
					} else
						System.out.print(".");
				}
			}
			System.out.println();
		}
		
		
		// 1st try : �������� ���� miss.
		/*
		for(int i=1; i<=row; i++) {
			for(int j=1; j<=column; j++) {
				if(i%2 != 0) {
					System.out.print("#");
				}else if(i%4 == 2) {
					System.out.print(".");
					if(j==column) {
						System.out.print("#");
					}
				}else if(i%4==0) {
					if(j==1) {
						System.out.print("#");
					}
					System.out.print(".");
				}
			}
			System.out.println();
		}
		*/
		
		
		
	}
}
