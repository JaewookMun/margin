package list.arraylist.implementation;

// ArrayList의 이름에서 볼 수 있는 것처럼 
// ArrayList는 내부적으로 Array(배열)를 사용하는 List이다.
public class ArrayList {
	// size: arrayList 내부에 몇개의 데이터가 존재하는지를 의미
	private int size=0;
	private Object[] elementData = new Object[100];
	
	/*
	 * [egoing lecture] 추가 삭제시 기능적으로 어떠한지!!!
	 * ArrayList 만들기 메소드 추가 과정
	 * 1. add - List에 추가, 특정 위치에 추가 (first)
	 * 2. toString - 리스트 상태를 설명 
	 * 3. remove - 특정위치(지정, 첫번째, 마지막)
	 * 4. 요소 참조 get
	 * 5. 리스트의 엘리먼트 갯수
	 * 6. 리스트에 특정요소가 존재하는지 여부
	 * 
	 ***************************************************
	 * 7. 반복적인작업을 처리 - ListIterator [hasNext() / next()]
	 *    -> ArrayList - java 구현 9 iterator next hasNext ***
	 * 8. Iterator를 통해 탐색하는 중 필요한 요소의 추가 or 삭제
	 * 
	 */
	
	
	
	public boolean addFirst(Object element) {
		return add(0, element);
	}

	public boolean addLast(Object element) {
		elementData[size] = element;
		size++;
		
		return true;
	}
	
	public boolean add(int index, Object element) {
		for(int i =size-1; i>=index; i--) {
			elementData[i+1]=elementData[i];
		}
		elementData[index]=element;
		size++;
		
		return true;
	}
	
	@Override
	public String toString() {
		String str="[";
		for(int i=0; i<size; i++) {
			str += elementData[i];
			if(i < size-1) {
				str += ", ";
			}
		}
		return str+"]";
	}

	public Object remove(int index) {
		Object removed = elementData[index];
		// 주체 or 대상이 무엇인지 알아야함.
		// 제거해야하는 요소보다 인덱스가 큰 요소들을 한칸씩 당기는 개념이므로 
		// 매개변수로 받는 index보다 1 큰 엘리먼트부터 시작해서 마지막에 위치한 엘리먼트 까지 적용되야한다.
		for(int i=index+1; i<=size-1; i++) {
			elementData[i-1]=elementData[i];
			
		}
		size--;
		elementData[size]=null; 
		// 마지막에 위치한 엘리먼트는 제거해서 비워줘야함.
		// 배열의 저장공간에 아무런 값도 없을 때는 비어있기 때문에 null이다. 
		// 원시자료형의 초기값은 0 / false이지만 참조형(객체)은 null이다. 
		return removed;
	}
	
	public Object removeFirst() {
		return remove(0);
	}
	
	public Object removeLast() {
		return remove(size-1);
	}

	public Object get(int index) {
		return elementData[index];
	}
	
	public int size() {
		return size;
	}

	public int indexOf(Object o) {
		for(int i=0; i<size; i++) {
			if(o.equals(elementData[i])) {
				return i;
			} 
		}
		return -1;
	}
	
	// 반복 > Iterator 패턴사용(반복작업을 처리하기 위한 객체)이 권장된다.
	public ListIterator listIterator() {

		return new ListIterator();
	}
	
	class ListIterator{
		private int nextIndex=0;
		// next() 메소드가 호출될 때 마다 필요한 인덱스를 알 수 있다면 기능을 구현할 수 있음.
		// nextIndex는 ArrayList의 요소를 가리킨다.
		
		public boolean hasNext() {
			// 왜 nextIndex < size()인지 의미 곱씹기!
			return nextIndex < size();
		}
		
		
		public Object next() {
			/*
			Object returnData=elementData[nextIndex];
			nextIndex++;
			return returnData;
			*/
			
			// 존재하는 nextIndex가 처리된 후 증가하기 때문에
			// 위의 주석처리된 코드와 동일
			return elementData[nextIndex++];
		}
		/*
		 * next()에서 nextIndex의 원리
		 * first : 현재 가리키는 element[0]를 return한 뒤 다음 element[1]를 가리킨다. (pointing)
		 * second : 현재 가리키는 element[1]를 return 한 뒤 다음 element[2]를 가리킨다.
		 * ...
		 * last : 현재 가리키는 element[n]를 return하고 존재하지 않는 element를 가리킨다.
		 * 
		 * previous()는 이를 반대로함.
		 * 
		 */

		public Object previous() {
			return elementData[--nextIndex];
		}
		
		public boolean hasPrevious() {
			// nextIndex가 0보다 큰 경우에 true가 반환되도록 코드작성
			// 'nextIndex > 0' 조건문의 결과 (논리값)를 return
			return nextIndex > 0;
		}
		
		public void add(Object element) {
			// this를 사용해서 ArrayList의 인스턴스에서 사용하는 add()임을 명시
			ArrayList.this.add(nextIndex++, element);
		}
		
		// 현재 nextIndex(cursor를 의미)가 가리키는(pointing) 엘리먼트를 제거
		 
		public void remove() {
			ArrayList.this.remove(nextIndex-1);
			nextIndex--;
		}
	}
}
