require 'pry'

def pizzas
    pizzas = [
        {
            name: "Margarita Pizza"
            toppings: "Bazil, Tomato"
            price: 8
        },
        {
            name: "Hawaiian Pizza"
            toppings: "Ham, Pineapple"
            price: 9
        },
        {
            name: "Meat Lovers Pizza"
            toppings: "Sausage, Ham, Pepperoni"
            price: "10"
        },
        {
            name: "Veggie Lovers Pizza"
            toppings: "Onion, Bellpepper, Olives"
            price: 9
        },
        {
            name: "Cheese Pizza"
            toppings: "Cheese"
            price: "7"
        },
        {
            name: "Popeye Pizza"
            toppings: "Spinach"
            price: 8
        },
        {
            name: "Olive You Pizza"
            toppings: "Green and Black Olives"
            price: 11
        },
        {
            name: "Hot Ass Pizza"
            toppings: "Jalepenos"
            price: 9
        },
        {
            name: "Buffalo Chicken Pizza"
            toppings: "Buffalo Chicken, Blue Cheese Crumbles"
            price: 12
        },
        {
            name: "Gucci Pizza"
            toppings: "Chicken Breast, Onions, Jalepenos"
            price: 11
        },
        {
            name: "Peppa Pig"
            toppings: "Sausage, Jalepenos, Bell Peppers"
            price: 11
        }

    ]
end

#puts names and returns array of pizza menu
def pizza_menu
    pizzas.map do |pizza|
       p pizzas[:name :toppings :price]
    end
end