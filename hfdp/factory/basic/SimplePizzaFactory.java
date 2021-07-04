package hfdp.factory.basic;

/*
 * @@@ 객체 생성을 처리하는 클래스를 팩토리라고 부른다. @@@
 * 
 * Pizza 클래스의 orderPizza()메소드는 SimplePizzaFactory의 client가 된다.
 * 피자 요청 -> ~Factory react to the requirement
 * 
 * 현실 세계처럼 서버 ~ 클라이언트 관계는 다양한 분야에 적용될 수 있다.
 * createPizza()는 다양한 클라이언트를 보유할 수 있다.
 * 이와 같은 작업을 통해 각각의 코드를 변경해야 할 경우 여기저기 다들어갈 필요 없이
 * 팩토리 클래스만 수정하면 된다.
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
