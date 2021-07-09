package list.linkedlist.implementation;

public class LinkedList {
	// 누가 제일 첫번째인가?
	// 누가 제일 끝에 있는가?
	// 리스트의 사이즈
	private Node head;
	private Node tail;
	private int size=0;
	
	// ArrayList가 배열을 이용하는 것과 달리
	// LinkedList는 객체들을 통해 구현
	
	/*
	 * [구현]
	 * 1. addFirst - 첫번째 위치에 요소 넣기
	 * 2. addLast - 마지막 위치
	 * 3. 내부 API
	 * 4. add - 원하는 위치에 추가
	 * 5. toString() - 문자열 변환
	 * 6. removeFirst() - 첫번째 위치 요소 제거
	 * 7. remove() - 특정위치
	 * 8. removeLast()
	 * 9. size()
	 * 10. get()
	 * 11. indexOf()
	 */
	
	private class Node{
		private Object data;
		// 다음 엘리먼트의 정보를 담고 있는 next 변수의 타입은 노드가 된다.
		private Node next;

		// input - 리스트에서 노드가 생성될때 노드는 값을 갖는다.
		public Node(Object input) {
			this.data=input;
			this.next=null;
		}
		
		public String toString() {
			return String.valueOf(this.data);
		}
	}
	
	// input 값을 받아서 Node 객체를 만드는 것이 중요
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
		} else { // data가 존재할 경우
			// tail이 가리키는 node가 새롭게 추가되는 노드가 된다면...
			tail.next=newNode;
			tail=newNode;
			size++;
		}
	}
	
	// 사용자에게 노출되면 안되는 부품.
	Node node(int index) {
		Node x=head;
		for(int i=0; i<index; i++) {
			x=x.next;
		}
		return x;
	}
	
	// 추가하고자하는 위치의 이전 노드를 알고 있어야 한다.
	// 이전 노드의 next로 원하는 위치의 노드도 알 수 있다.
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
	
	// 메소드들을 구성할 때 기존에 만든 메소드를 활용해 새로운 메소드를 만들 수 있다. 
	// LinkedList에서 마지막 요소를 지울 때 tail만 지워서는 안된다.
	// > 이전 요소의 next 값을 지워야함.
	// > 이때문에, 마지막 요소를 지울 때 시간이 가장 많이 걸린다.
	public Object removeLast() {
		return remove(size-1);
	}
	
	public int size() {
		return size; // size 값을 관리했기 때문에 size를 빠르게 가져올 수 있다.
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
	
	
	
	
	
}
