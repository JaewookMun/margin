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
        // ArrayList : index, LinkedList : link(= next)
        LinkedList.ListIterator i = numbers.listIterator();
        while(i.hasNext()) {
        	if((int)i.next()==20) {
        		i.remove();
        	}
        }
        System.out.println(numbers); // 이해가 잘 안감...
        
        i.remove();
        
    }
}
