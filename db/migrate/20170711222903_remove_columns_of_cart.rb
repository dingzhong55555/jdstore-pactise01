class RemoveColumnsOfCart < ActiveRecord::Migration[5.0]
  def change
    remove_column :carts, :cart_id
    remove_column :carts, :quantity
    remove_column :carts, :product_id
  end
end
