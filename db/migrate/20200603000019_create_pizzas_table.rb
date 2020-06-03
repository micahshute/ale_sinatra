class CreatePizzasTable < ActiveRecord::Migration[6.0]
  def change

    create_table :pizzas do |t|
      t.string :name
      t.string :toppings
      t.float :price
    end

  end
end
