package compare;

import list.arraylist.implementation.ArrayList;
import list.linkedlist.implementation.LinkedList;

public class Main {

	public static void main(String[] args) {
		ArrayList a = new ArrayList();
		a.addLast(10);
		a.addLast(20);
		a.addLast(30);
		a.addFirst(5); // 1��
		a.get(2); // 2��
		ArrayList.ListIterator ai=a.listIterator(); // 3��
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
		
		
		//Q. 1�� �۾��� ������ �� ���ɻ� � ���̰� �ִ°�? (A: ArrayList, B: LinkedList)
		// A: ���� �ڷ���� �ű��. B. ������� ������ ���� �Ǿտ� �߰� ����
		
		//Q. 2�� �۾��� ������ �� ���ɻ� � ���̰� �ִ°�? (A: ArrayList, B: LinkedList)
		// A: index�� ���� ���ϼӵ�  B. head���� ã�ư����Ѵ�.
		
		//Q. 3�� �۾��� ������ �� ���ɻ� � ���̰� �ִ°�? (A: ArrayList, B: LinkedList)
		// A: 1��ó�� �߰��� �߰��� ��ҵ��� ��ĭ�� �Űܾ��Ѵ�.  B. ��ũ������ ���� �ս��� �߰��� �����ϴ�.
		
		// �ڹٿ����� ArrayList�� Dynamic Array ���·� �����Ǿ� �ִ�. (Collection Framework)
		
	}

}
