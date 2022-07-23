class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.integer :sku
      t.integer :brand_id
      t.integer :category_id
      t.decimal :list_price

      t.timestamps
    end
    add_foreign_key :inventories, :categories
    add_foreign_key :inventories, :brands
  end
end
