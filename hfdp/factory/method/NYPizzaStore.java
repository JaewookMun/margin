package hfdp.factory.method;

import hfdp.factory.basic.Pizza;
import hfdp.factory.method.pizza.NYStyleCheesePizza;
import hfdp.factory.method.pizza.NYStyleClamPizza;
import hfdp.factory.method.pizza.NYStylePepperoniPizza;
import hfdp.factory.method.pizza.NYStyleVeggiePizza;

public class NYPizzaStore extends PizzaStore {

	@Override
	Pizza createPizza(String type) {
		Pizza pizza=null;
		
		if(type.equals("cheese")) {
			pizza=new NYStyleCheesePizza();
		} else if (type.equals("pepperoni")) {
			pizza=new NYStylePepperoniPizza();
		} else if (type.equals("clam")) {
			pizza=new NYStyleClamPizza();
		} else if (type.equals("veggie")) {
			pizza=new NYStyleVeggiePizza();
		}
		
		return pizza;
	}

}
