package list.arraylist.implementation;

// ArrayList�� �̸����� �� �� �ִ� ��ó�� 
// ArrayList�� ���������� Array(�迭)�� ����ϴ� List�̴�.
public class ArrayList {
	// size: arrayList ���ο� ��� �����Ͱ� �����ϴ����� �ǹ�
	private int size=0;
	private Object[] elementData = new Object[100];
	
	/*
	 * [egoing lecture] �߰� ������ ��������� �����!!!
	 * ArrayList ����� �޼ҵ� �߰� ����
	 * 1. add - List�� �߰�, Ư�� ��ġ�� �߰� (first)
	 * 2. toString - ����Ʈ ���¸� ���� 
	 * 3. remove - Ư����ġ(����, ù��°, ������)
	 * 4. ��� ���� get
	 * 5. ����Ʈ�� ������Ʈ ����
	 * 6. ����Ʈ�� Ư����Ұ� �����ϴ��� ����
	 * 
	 ***************************************************
	 * 7. �ݺ������۾��� ó�� - ListIterator [hasNext() / next()]
	 *    -> ArrayList - java ���� 9 iterator next hasNext ***
	 * 8. Iterator�� ���� Ž���ϴ� �� �ʿ��� ����� �߰� or ����
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
		// ��ü or ����� �������� �˾ƾ���.
		// �����ؾ��ϴ� ��Һ��� �ε����� ū ��ҵ��� ��ĭ�� ���� �����̹Ƿ� 
		// �Ű������� �޴� index���� 1 ū ������Ʈ���� �����ؼ� �������� ��ġ�� ������Ʈ ���� ����Ǿ��Ѵ�.
		for(int i=index+1; i<=size-1; i++) {
			elementData[i-1]=elementData[i];
			
		}
		size--;
		elementData[size]=null; 
		// �������� ��ġ�� ������Ʈ�� �����ؼ� ��������.
		// �迭�� ��������� �ƹ��� ���� ���� ���� ����ֱ� ������ null�̴�. 
		// �����ڷ����� �ʱⰪ�� 0 / false������ ������(��ü)�� null�̴�. 
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
	
	// �ݺ� > Iterator ���ϻ��(�ݺ��۾��� ó���ϱ� ���� ��ü)�� ����ȴ�.
	public ListIterator listIterator() {

		return new ListIterator();
	}
	
	public class ListIterator{
		private int nextIndex=0;
		// next() �޼ҵ尡 ȣ��� �� ���� �ʿ��� �ε����� �� �� �ִٸ� ����� ������ �� ����.
		// nextIndex�� ArrayList�� ��Ҹ� ����Ų��.
		
		public boolean hasNext() {
			// �� nextIndex < size()���� �ǹ� ���ñ�!
			return nextIndex < size();
		}
		
		
		public Object next() {
			/*
			Object returnData=elementData[nextIndex];
			nextIndex++;
			return returnData;
			*/
			
			// �����ϴ� nextIndex�� ó���� �� �����ϱ� ������
			// ���� �ּ�ó���� �ڵ�� ����
			return elementData[nextIndex++];
		}
		/*
		 * next()���� nextIndex�� ����
		 * first : ���� ����Ű�� element[0]�� return�� �� ���� element[1]�� ����Ų��. (pointing)
		 * second : ���� ����Ű�� element[1]�� return �� �� ���� element[2]�� ����Ų��.
		 * ...
		 * last : ���� ����Ű�� element[n]�� return�ϰ� �������� �ʴ� element�� ����Ų��.
		 * 
		 * previous()�� �̸� �ݴ����.
		 * 
		 */

		public Object previous() {
			return elementData[--nextIndex];
		}
		
		public boolean hasPrevious() {
			// nextIndex�� 0���� ū ��쿡 true�� ��ȯ�ǵ��� �ڵ��ۼ�
			// 'nextIndex > 0' ���ǹ��� ��� (����)�� return
			return nextIndex > 0;
		}
		
		public void add(Object element) {
			// this�� ����ؼ� ArrayList�� �ν��Ͻ����� ����ϴ� add()���� ���
			ArrayList.this.add(nextIndex++, element);
		}
		
		// ���� nextIndex(cursor�� �ǹ�)�� ����Ű��(pointing) ������Ʈ�� ����
		 
		public void remove() {
			ArrayList.this.remove(nextIndex-1);
			nextIndex--;
		}
	}
}
