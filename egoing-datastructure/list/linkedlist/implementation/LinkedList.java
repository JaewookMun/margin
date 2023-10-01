package list.linkedlist.implementation;

public class LinkedList {
	// ���� ���� ù��°�ΰ�?
	// ���� ���� ���� �ִ°�?
	// ����Ʈ�� ������
	private Node head;
	private Node tail;
	private int size=0;
	
	// ArrayList�� �迭�� �̿��ϴ� �Ͱ� �޸�
	// LinkedList�� ��ü���� ���� ����
	
	/*
	 * [����]
	 * 1. addFirst - ù��° ��ġ�� ��� �ֱ�
	 * 2. addLast - ������ ��ġ
	 * 3. ���� API
	 * 4. add - ���ϴ� ��ġ�� �߰�
	 * 5. toString() - ���ڿ� ��ȯ
	 * 6. removeFirst() - ù��° ��ġ ��� ����
	 * 7. remove() - Ư����ġ
	 * 8. removeLast()
	 * 9. size()
	 * 10. get()
	 * 11. indexOf()
	 * 12. ListIterator - next()
	 * 13. hasNext()
	 * 14. add() - next()�� head�� ����Ű���� or ����Ʈ �߰��� �ִ���
	 * 15. remove()
	 */
	
	private class Node{
		private Object data;
		// ���� ������Ʈ�� ������ ��� �ִ� next ������ Ÿ���� ��尡 �ȴ�.
		private Node next;

		// input - ����Ʈ���� ��尡 �����ɶ� ���� ���� ���´�.
		public Node(Object input) {
			this.data=input;
			this.next=null;
		}
		
		public String toString() {
			return String.valueOf(this.data);
		}
	}
	
	// input ���� �޾Ƽ� Node ��ü�� ����� ���� �߿�
	public void addFirst(Object input) {
		Node newNode = new Node(input);
		newNode.next = head;
		head = newNode;
		size++;
		if(head.next==null) {
			tail=head;
		}
	}
	
	public void addLast(Object input) {
		Node newNode = new Node(input);
		if(size==0) {
			addFirst(input);
		} else { // data�� ������ ���
			// tail�� ����Ű�� node�� ���Ӱ� �߰��Ǵ� ��尡 �ȴٸ�...
			tail.next=newNode;
			tail=newNode;
			size++;
		}
	}
	
	// ����ڿ��� ����Ǹ� �ȵǴ� ��ǰ.
	Node node(int index) {
		Node x=head;
		for(int i=0; i<index; i++) {
			x=x.next;
		}
		return x;
	}
	
	// �߰��ϰ����ϴ� ��ġ�� ���� ��带 �˰� �־�� �Ѵ�.
	// ���� ����� next�� ���ϴ� ��ġ�� ��嵵 �� �� �ִ�.
	public void add(int k, Object input) {
		if(k==0) {
			addFirst(input);
		} else {
			Node temp1=node(k-1);
			Node temp2=temp1.next;
			
			Node newNode = new Node(input);
			temp1.next=newNode;
			newNode.next=temp2;
			size++;
			if(newNode.next==null) {
				tail=newNode;
			}
		}
	}
	
	public String toString() {
		if(head==null) {
			return "[]";
		}
		Node temp=head;
		String str="[";
		
		while(temp.next != null) {
			str += temp.data +", ";
			temp=temp.next;
		}
		str += temp.data;
		
		return str+"]";
	}

	public Object removeFirst() {
		Node temp=head;
		head=head.next;
		Object returnData = temp.data;
		temp=null;
		size--;
		return returnData;
	}
	
	public Object remove(int k) {
		if(k==0) {
			removeFirst();
		}
		Node temp = node(k-1);
		Node todoDeleted = temp.next;
		temp.next=temp.next.next;
		Object returnData=todoDeleted.data;
		if(todoDeleted==tail) {
			tail=temp;
		}
		todoDeleted=null;
		size--;
		return returnData;
	}
	
	// �޼ҵ���� ������ �� ������ ���� �޼ҵ带 Ȱ���� ���ο� �޼ҵ带 ���� �� �ִ�. 
	// LinkedList���� ������ ��Ҹ� ���� �� tail�� �������� �ȵȴ�.
	// > ���� ����� next ���� ��������.
	// > �̶�����, ������ ��Ҹ� ���� �� �ð��� ���� ���� �ɸ���.
	public Object removeLast() {
		return remove(size-1);
	}
	
	public int size() {
		return size; // size ���� �����߱� ������ size�� ������ ������ �� �ִ�.
	}
	
	public Object get(int k) {
		Node temp = node(k);
		return temp.data;
	}
	
	public int indexOf(Object data) {
		Node temp=head;
		int index=0;
		while(temp.data != data) {
			temp=temp.next;
			index++;
			if(temp==null) {
				return -1;
			}
		}
		return index;
	}
	
	public ListIterator listIterator() {
		return new ListIterator();
	}
	
	public class ListIterator {
		private Node next;
		private Node lastReturned;
		private int nextIndex;
		
		ListIterator(){
			next=head;
		}
		
		// difficult
		public Object next() {
			lastReturned=next;
			next=next.next;
			nextIndex++;
			return lastReturned.data;
		}
		
		public boolean hasNext() {
			return nextIndex < size();
			// private�� size �ʵ尡 �ƴ� size() �޼ҵ带 ���� size�� ���´�.
		}
		// LinkedList�� ��尡 ���� ����� ��ũ������ ���´�.
		// index�� ��Ҹ� �����ϴ� ArrayList�� �޸� ���� ��������� ã�� �� ����.
		
		public void add(Object input) {
			Node newNode = new Node(input);
			
			if(lastReturned == null) {
				// ù��ġ
				head=newNode;
				newNode.next=next;
			} else {
				// lastReturned�� ��� next�� �ڿ� ����´�.
				lastReturned.next=newNode;
				newNode.next=next;
			}
			
			nextIndex++;
			size++;
		}

		// LinkedList�� ������ ���������� ����� ���̴�.
		public void remove() {
			if(nextIndex==0) {// ���� �ƹ��� ������Ʈ�� �������� ���� ����
				throw new IllegalStateException();
			}
			LinkedList.this.remove(nextIndex-1);
			nextIndex--;
		}
		
	}
	
	
	
}
