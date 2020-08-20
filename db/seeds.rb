Meal.destroy_all
Pizza.destroy_all
Drink.destroy_all 


#figure out way for price to put/print $ + "price"
margarita = Pizza.create(name: "Margarita Pizza", toppings: "Bazil, Tomato", price: 8)
hawaiian = Pizza.create(name: "Hawaiian Pizza", toppings: "Ham, Pineapple", price: 9)
meat_lovers = Pizza.create(name: "Meat Lovers Pizza", toppings: "Sausage, Ham, Pepperoni", price: 10)
veggie_lovers = Pizza.create(name: "Veggie Lovers Pizza", toppings: "Onion, Bellpepper, Olives", price: 9)
cheese = Pizza.create(name: "Cheese Pizza", toppings: "Cheese", price: 7)
popeye = Pizza.create(name: "Popeye Pizza", toppings: "Spinach", price: 8)
olive_you = Pizza.create(name: "Olive You Pizza", toppings: "Green and Black Olives", price: 11)
hot_ass = Pizza.create(name: "Hot Ass Pizza", toppings: "Jalepenos", price: 9)
buffalo_chicken = Pizza.create(name: "Buffalo Chicken Pizza", toppings: "Buffalo Chicken, Blue Cheese Crumbles", price: 12)
gucci = Pizza.create(name: "Gucci Pizza", toppings: "Chicken Breast, Onions, Jalepenos", price: 11)
peppa_pig = Pizza.create(name: "Peppa Pig", toppings: "Sausage, Jalepenos, Bell Peppers", price: 11)

corona = Drink.create(name: 'Corona', price: 6)
budweiser = Drink.create(name: 'Budweiser', price: 6)
michelobe = Drink.create(name: 'Michelobe', price: 6)
bud_lite = Drink.create(name: 'Bud Lite', price: 6)

Meal.create(name:'Margintina Combo', pizza_id: margarita.id, drink_id: corona.id, price: 12)
Meal.create(name:'College Kid Combo', pizza_id: meat_lovers.id, drink_id: bud_lite.id, price: 14)
Meal.create(name:'Flyin Hawaiian', pizza_id: hawaiian.id, drink_id: corona.id, price: 13)
Meal.create(name:'Gentle Giant', pizza_id: veggie_lovers.id, drink_id: michelobe.id, price: 11)