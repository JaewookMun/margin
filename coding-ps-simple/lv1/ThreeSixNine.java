package practice.goorm.lv1;

public class ThreeSixNine {
	public static void main(String[] args) {
		/*
		 * 2021.05.02 goormlevel 1
		 * 369 ����
		 */
		
		
		
		
		System.out.println("========================= test =============================");
		/*
		 * �޼���
		 * 
		 */
		
		String test = "12345";
		System.out.println(test.length());
		
		
		int[] arr = new int[test.length()];
		for(int i=0; i<arr.length; i++) {
			arr[i]=Character.digit(test.charAt(i), 10);
		}
		
		for(int i : arr) {
			System.out.println(i);
		}
		
		
		
	}
}
