package hfdp.factory.method;

import hfdp.factory.basic.Pizza;

// 피자 가게와 피자 제작 과정 전체를 하나로 묶어주는 프레임워크 생성
public abstract class PizzaStore {
	
	public Pizza orderPizza(String type) {
		/**
		 * 160page 부터
		 */
		Pizza pizza;
		pizza = createPizza(type);
		
		// 변화가 없는 부분
		pizza.prepare();
		pizza.bake();
		pizza.cut();
		pizza.box();
		return pizza;
	}
	
	// factory 메소드가 추상 메소드로 변경 - 팩토리 객체 대신 메소드로 피자객체 생성
	// 추상메소드를 통해 PizzaStore를 상속받은 하위 store 클래스들이 다른 특색의 피자를 생성할 수 있음.
	abstract Pizza createPizza(String type);
}
