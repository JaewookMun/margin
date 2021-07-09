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
        // numbers.add(1,15); // 10과 20 사이에 집어넣는다.
        // System.out.println(numbers.removeFirst());
        
        // System.out.println(numbers.remove(2));
        // System.out.println(numbers.removeLast());
        // System.out.println(numbers.size());
        // System.out.println(numbers.get(1));
        System.out.println(numbers.indexOf(10));
        //System.out.println(numbers);
        
    }
}
