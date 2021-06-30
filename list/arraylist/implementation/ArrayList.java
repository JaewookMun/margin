package list.arraylist.implementation;

// ArrayList의 이름에서 볼 수 있는 것처럼 
// ArrayList는 내부적으로 Array(배열)를 사용하는 List이다.
public class ArrayList {
	// size: arrayList 내부에 몇개의 데이터가 존재하는지를 의미
	private int size=0;
	private Object[] elementData = new Object[100];
	
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
}
