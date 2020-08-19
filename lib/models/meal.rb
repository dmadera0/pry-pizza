class Meal < ActiveRecord::Base
    belongs_to :pizza
    belongs_to :drink
end