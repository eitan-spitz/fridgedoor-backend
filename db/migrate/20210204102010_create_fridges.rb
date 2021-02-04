class CreateFridges < ActiveRecord::Migration[6.0]
  def change
    create_table :fridges do |t|
      t.string :name
      t.integer :family_id

      t.timestamps
    end
  end
end
