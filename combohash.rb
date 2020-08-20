require 'pry'

def meals
    puts "Combine and save with our one of a kind combo meals!"
    meals= [
        {
            name: 'Margintina Combo'
            description: 'One Margarita Pizza and a Corona'
            price: 12
        },
        {
            name: 'College Kid Combo'
            description: 'One Meat Lovers Pizza and a Bud Lite'
            price: 14
        },
        {
            name: 'Flyin Hawaiian Combo'
            description: 'One Hawaiian Pizza and a Corona'
            price: 13
        },
        {
            name: 'Gentle Giant'
            description: 'One Veggie Lovers Pizza and a Michelobe'
            price: 11
        },

    ]
end

#puts names and returns array of combo menu
def meal_menu
    meals.map do |meal|
       p meals[:name :description :price]
    end
end