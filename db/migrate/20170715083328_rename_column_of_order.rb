class RenameColumnOfOrder < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :aasm_statement, :aasm_state
    rename_index :orders, :aasm_statment, :aasm_state
  end
end
