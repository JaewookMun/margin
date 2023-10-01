package list.arraylist.implementation;

public class Main {
	public static void main(String[] args) {
		
		ArrayList numbers = new ArrayList();
		numbers.addLast(10);
		numbers.addLast(20);
		numbers.addLast(30);
		numbers.addLast(40);
		
		/*
		 * ArrayList�� �ִ� ���� - �����͸� �߰��ϰų� ������ ������ Element�� ��ġ�� ������  
		 *  
		 * 1. Ư����ġ�� �����͸� �ְ����ϸ� �ش� ��ġ�� ������Ʈ�� �����Ͽ� ��� ������Ʈ���� 
		 * �ڷ� ��ĭ�� �Űܾ� �Ѵ�.
		 * 2. ���(element)�� ������ ������ ��ġ�� �ٽ� �������ؾ��Ѵ�.
		 * 
		 *  => LinkedList���� ó���ӵ��� ������.
		 */
		

		/*
			// iterator 'li'�� ������ element�� ����ϰ� �ִ�.
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
				li.remove(); // 30�� 40 ���̿� �ֱ� ���ػ��
			}
		}
		System.out.println(numbers);
		
	}
}
