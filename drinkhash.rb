require 'pry'

def drinks
    drinks = [
        {
            name: "Corona"
            price: 6
        },
        {
            name: "Budweiser"
            price: 6
        },
        {
            name: "Michelobe"
            price: 6
        },
        {
            name: "Bud Lite"
            price: 6
        },

    ]
end

#puts names and returns array of drink menu
def drink_menu
    drinks.map do |drink|
       p drinks[:name :price]
    end
end