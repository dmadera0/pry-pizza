class CreateMealsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.references :pizza
      t.references :drink
      t.integer :price
      t.string :name
    end
  end
end
