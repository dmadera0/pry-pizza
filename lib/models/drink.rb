class Drink < ActiveRecord::Base 
    has_many :meals
    has_many :pizzas, through: :meals
end

