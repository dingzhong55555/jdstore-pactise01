class RenameProductlists < ActiveRecord::Migration[5.0]
  def change
    rename_table :productlists, :product_lists
  end
end
