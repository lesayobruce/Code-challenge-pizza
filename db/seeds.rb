# create some restaurants
restaurant = Restaurant.create(name: Faker::Restaurant.name, address: "298 Atlantic Ave, Brooklyn, NY 11201")
restaurant = Restaurant.create(name: Faker::Restaurant.name, address: "69 W 55th St, New York, NY 10019")

# create some pizzas
cheese = Pizza.create(name:  "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
pepperoni = Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

# # associate pizzas with restaurants
#veggie
# sottocasa.pizzas << cheese
# sottocasa.pizzas << pepperoni
# pizzarte.pizzas << cheese

# # create some restaurant pizzas
# RestaurantPizza.create(price: 10.00, restaurant: sottocasa, pizza: cheese)
# RestaurantPizza.create(price: 12.00, restaurant: sottocasa, pizza: pepperoni)
# RestaurantPizza.create(price: 8.78, restaurant: pizzarte, pizza: cheese)