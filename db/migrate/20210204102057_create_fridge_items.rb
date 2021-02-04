class CreateFridgeItems < ActiveRecord::Migration[6.0]
  def change
    create_table :fridge_items do |t|
      t.integer :fridge_id
      t.integer :item_id

      t.timestamps
    end
  end
end
