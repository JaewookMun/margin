package list.linkedlist.implementation;

public class Main {
	public static void main(String[] args) {
        LinkedList numbers = new LinkedList();
        /*
        numbers.addFirst(30);
        numbers.addFirst(20);
        numbers.addFirst(10);
        */

        //numbers.addLast(5); 
        numbers.addLast(10); 
        //numbers.addLast(15); 
        numbers.addLast(20); 
        numbers.addLast(30); 
        // LinkedList.ListIterator i =numbers.listIterator();
        /*
        System.out.println(i.next());
        System.out.println(i.next());
        System.out.println(i.hasNext());
        System.out.println(i.next());
        System.out.println(i.hasNext());
        */
        /*
        while(i.hasNext()) {
        	System.out.println(i.next());
        }
        */
        
        LinkedList.ListIterator i = numbers.listIterator();
        i.add(5);
        i.next();
        i.add(15);
        System.out.println(numbers); // [5, 10, 15, 20, 30]
        // LinkedList는 next를 통해 서로 연결
    }
}
