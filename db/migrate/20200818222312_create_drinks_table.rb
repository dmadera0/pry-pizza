class CreateDrinksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :price
    end
  end
end
