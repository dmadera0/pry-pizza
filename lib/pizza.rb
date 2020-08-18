class Pizza < ActiveRecord::Base
    has_many :orders
    has_many :drinks, through: :orders
end