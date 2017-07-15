class AddAasmStateToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :aasm_statement, :string, default: "order_placed"
    add_index :orders, :aasm_statment
  end
end
