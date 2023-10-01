package hfdp.factory.method;

import hfdp.factory.basic.Pizza;

// ���� ���Կ� ���� ���� ���� ��ü�� �ϳ��� �����ִ� �����ӿ�ũ ����
public abstract class PizzaStore {
	
	public Pizza orderPizza(String type) {
		/**
		 * 160page ����
		 */
		Pizza pizza;
		pizza = createPizza(type);
		
		// ��ȭ�� ���� �κ�
		pizza.prepare();
		pizza.bake();
		pizza.cut();
		pizza.box();
		return pizza;
	}
	
	// factory �޼ҵ尡 �߻� �޼ҵ�� ���� - ���丮 ��ü ��� �޼ҵ�� ���ڰ�ü ����
	// �߻�޼ҵ带 ���� PizzaStore�� ��ӹ��� ���� store Ŭ�������� �ٸ� Ư���� ���ڸ� ������ �� ����.
	abstract Pizza createPizza(String type);
}
