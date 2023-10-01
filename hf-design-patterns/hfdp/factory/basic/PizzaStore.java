package hfdp.factory.basic;

// new를 사용하는 것은 구상클래스의 인스턴스를 만드는 것이다.
public class PizzaStore {
	SimplePizzaFactory factory;
	
	public PizzaStore(SimplePizzaFactory factory) {
		this.factory=factory;
	}
	
	// 피자종류를 전달
	public Pizza orderPizza(String type) {
		
		/*
		 *  orderPizza() 메소드에서 수정이 필요한 부분은
		 * type의 상황에 따라 인스턴스를 만들 구상클래스를 선택하는 부분이다.
		 * 
		 * e.g. 피자 종류가 추가되거나 제거될 시 해당 부분을 수정해야함
		 */
		
		/* 
		// 캡슐화하여 객체를 전문으로 생성하는 Factory 클래스로 보낸
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
		
		// 변화가 없는 부분
		pizza.prepare();
		pizza.bake();
		pizza.cut();
		pizza.box();
		return pizza;
	}
}
