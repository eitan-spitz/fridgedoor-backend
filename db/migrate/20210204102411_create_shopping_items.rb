class CreateShoppingItems < ActiveRecord::Migration[6.0]
  def change
    create_table :shopping_items do |t|
      t.integer :shoppinglist_id
      t.integer :item_id

      t.timestamps
    end
  end
end
