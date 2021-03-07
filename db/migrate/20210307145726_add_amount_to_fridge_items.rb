class AddAmountToFridgeItems < ActiveRecord::Migration[6.0]
  def change
    add_column :fridge_items, :amount_num, :integer
    add_column :fridge_items, :amount_type, :string
  end
end
