package list.arraylist.implementation;

public class Main {
	public static void main(String[] args) {
		
		ArrayList numbers = new ArrayList();
		numbers.addLast(10);
		numbers.addLast(20);
		numbers.addLast(30);
		numbers.addLast(40);
		
		/*
		 * ArrayList의 최대 단점 - 데이터를 추가하거나 제거할 때마다 Element의 위치를 재조정  
		 *  
		 * 1. 특정위치에 데이터를 넣고자하면 해당 위치의 엘리먼트를 포함하여 모든 엘리먼트들을 
		 * 뒤로 한칸씩 옮겨야 한다.
		 * 2. 요소(element)를 제거할 때마다 위치를 다시 재조정해야한다.
		 * 
		 *  => LinkedList보다 처리속도가 느리다.
		 */
		

		/*
			// iterator 'li'는 현재의 element를 기억하고 있다.
			ArrayList.ListIterator li=numbers.listIterator();
			
			while(li.hasNext()) {
				System.out.println(li.next());
			}
			
			while(li.hasPrevious()) {
				System.out.println(li.previous());
			}

		 */
		
		
		
		ArrayList.ListIterator li=numbers.listIterator();
		
		while(li.hasNext()) {
			int number = (int)li.next();
			if(number == 30) {
				li.remove(); // 30과 40 사이에 넣기 위해사용
			}
		}
		System.out.println(numbers);
		
	}
}
