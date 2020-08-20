class Pizza < ActiveRecord::Base
    has_many :meals
    has_many :drinks, through: :meals

    def self.show_all_pizza
        Pizza.all.map do |pizza|
            pizza(:name)
        end
    end

end 