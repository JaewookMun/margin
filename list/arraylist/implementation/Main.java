package list.arraylist.implementation;

public class Main {
	public static void main(String[] args) {
		
		ArrayList numbers = new ArrayList();
		numbers.addLast(10);
		numbers.addLast(20);
		numbers.addLast(30);
		numbers.addLast(40);
		// 15를 10다음에 넣고자한다.
		// 데이터를 특정 위치에 넣고자 한다면 특정한 위치의 엘리먼트를 포함해서
		// 모든 엘리먼트들을 한칸씩 뒤로 옮겨야 한다.
		// 이것이 ArrayList의 최대 단점이다.
		numbers.add(1, 15);
		numbers.addFirst(5);
		
	
	}
}
