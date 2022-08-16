class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :title
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
