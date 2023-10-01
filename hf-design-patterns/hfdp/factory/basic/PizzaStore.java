package hfdp.factory.basic;

// new�� ����ϴ� ���� ����Ŭ������ �ν��Ͻ��� ����� ���̴�.
public class PizzaStore {
	SimplePizzaFactory factory;
	
	public PizzaStore(SimplePizzaFactory factory) {
		this.factory=factory;
	}
	
	// ���������� ����
	public Pizza orderPizza(String type) {
		
		/*
		 *  orderPizza() �޼ҵ忡�� ������ �ʿ��� �κ���
		 * type�� ��Ȳ�� ���� �ν��Ͻ��� ���� ����Ŭ������ �����ϴ� �κ��̴�.
		 * 
		 * e.g. ���� ������ �߰��ǰų� ���ŵ� �� �ش� �κ��� �����ؾ���
		 */
		
		/* 
		// ĸ��ȭ�Ͽ� ��ü�� �������� �����ϴ� Factory Ŭ������ ����
		if(type.equals("cheese")) {
			pizza=new CheesePizza();
		} else if (type.equals("pepperoni")) {
			pizza=new PepperoniPizza();
		} else if (type.equals("clam")) {
			pizza=new ClamPizza();
		} else if (type.equals("veggie")) {
			pizza=new VeggiePizza();
		}
		*/
		
		Pizza pizza=factory.createPizza(type);
		
		// ��ȭ�� ���� �κ�
		pizza.prepare();
		pizza.bake();
		pizza.cut();
		pizza.box();
		return pizza;
	}
}
