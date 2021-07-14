package compare;

import list.arraylist.implementation.ArrayList;
import list.linkedlist.implementation.LinkedList;

public class Main {

	public static void main(String[] args) {
		ArrayList a = new ArrayList();
		a.addLast(10);
		a.addLast(20);
		a.addLast(30);
		a.addFirst(5); // 1번
		a.get(2); // 2번
		ArrayList.ListIterator ai=a.listIterator(); // 3번
		while(ai.hasNext()) {
			if((int)ai.next()==20) {
				ai.add(25);
			}
		}
		
		LinkedList l = new LinkedList();
		l.addLast(10);
		l.addLast(20);
		l.addLast(30);
		l.addFirst(5);
		l.get(2);
		LinkedList.ListIterator li = l.listIterator();
		while(li.hasNext()) {
			if((int)li.next()==20) {
				li.add(25);
			}
		}
		
		
		//======================
		
		
		//Q. 1번 작업을 수행할 때 성능상 어떤 차이가 있는가? (A: ArrayList, B: LinkedList)
		// A: 뒤의 자료들을 옮긴다. B. 연결관계 수정을 통해 맨앞에 추가 가능
		
		//Q. 2번 작업을 수행할 때 성능상 어떤 차이가 있는가? (A: ArrayList, B: LinkedList)
		// A: index를 통해 동일속도  B. head부터 찾아가야한다.
		
		//Q. 3번 작업을 수행할 때 성능상 어떤 차이가 있는가? (A: ArrayList, B: LinkedList)
		// A: 1번처럼 중간에 추가시 요소들을 한칸씩 옮겨야한다.  B. 링크정보를 통해 손쉽게 추가가 가능하다.
		
		// 자바에서는 ArrayList를 Dynamic Array 형태로 구현되어 있다. (Collection Framework)
		
	}

}
