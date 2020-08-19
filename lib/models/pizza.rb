class Pizza < ActiveRecord::Base
    has_many :meals
    has_many :drinks, through: :meals
end