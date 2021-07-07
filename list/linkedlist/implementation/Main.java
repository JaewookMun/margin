package list.linkedlist.implementation;

public class Main {
	public static void main(String[] args) {
        LinkedList numbers = new LinkedList();
        /*
        numbers.addFirst(30);
        numbers.addFirst(20);
        numbers.addFirst(10);
        */

        numbers.addLast(10); // 0
        numbers.addLast(20); // 1
        numbers.addLast(30); // 2
        // numbers.add(1,15); // 10과 20 사이에 집어넣는다.
        System.out.println(numbers.removeFirst());
        System.out.println(numbers);
    }
}
