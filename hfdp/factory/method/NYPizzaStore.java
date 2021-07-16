package hfdp.factory.method;

import hfdp.factory.method.pizza.NYStyleCheesePizza;
import hfdp.factory.method.pizza.NYStyleClamPizza;
import hfdp.factory.method.pizza.NYStylePepperoniPizza;
import hfdp.factory.method.pizza.NYStyleVeggiePizza;
import hfdp.factory.method.pizza.Pizza;

public class NYPizzaStore extends PizzaStore {

	@Override
	Pizza createPizza(String item) {
		
		if(item.equals("cheese")) {
			return new NYStyleCheesePizza();
		} else if (item.equals("pepperoni")) {
			return new NYStylePepperoniPizza();
		} else if (item.equals("clam")) {
			return new NYStyleClamPizza();
		} else if (item.equals("veggie")) {
			return new NYStyleVeggiePizza();
		} else return null;
	}

}
