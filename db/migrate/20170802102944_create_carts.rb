class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.shopping_cart_fields
      t.timestamps
    end
  end
end
