class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :discount_type
      t.integer :discount_on
      t.decimal :discount_precentage

      t.timestamps
    end
  end
end
