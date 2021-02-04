class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :fdc_id
      t.string :fdc_description
      t.string :data_type

      t.timestamps
    end
  end
end
