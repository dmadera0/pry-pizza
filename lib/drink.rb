class Drink < ActiveRecord::Base 
    has_many :order
    has_many :pizza through: :order
end