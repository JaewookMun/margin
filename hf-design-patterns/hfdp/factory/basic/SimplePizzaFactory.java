package hfdp.factory.basic;

/*
 * @@@ ��ü ������ ó���ϴ� Ŭ������ ���丮��� �θ���. @@@
 * 
 * Pizza Ŭ������ orderPizza()�޼ҵ�� SimplePizzaFactory�� client�� �ȴ�.
 * ���� ��û -> ~Factory react to the requirement
 * 
 * ���� ����ó�� ���� ~ Ŭ���̾�Ʈ ����� �پ��� �о߿� ����� �� �ִ�.
 * createPizza()�� �پ��� Ŭ���̾�Ʈ�� ������ �� �ִ�.
 * �̿� ���� �۾��� ���� ������ �ڵ带 �����ؾ� �� ��� �������� �ٵ� �ʿ� ����
 * ���丮 Ŭ������ �����ϸ� �ȴ�.
 */
public class SimplePizzaFactory {
	
	public Pizza createPizza(String type) {
		Pizza pizza=null;
		
		if(type.equals("cheese")) {
			pizza=new CheesePizza();
		} else if (type.equals("pepperoni")) {
			pizza=new PepperoniPizza();
		} else if (type.equals("clam")) {
			pizza=new ClamPizza();
		} else if (type.equals("veggie")) {
			pizza=new VeggiePizza();
		}
		
		return pizza;
	}
}
