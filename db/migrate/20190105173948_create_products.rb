class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code
      t.string :unit_of_measurement
      t.integer :quantity
      t.text :description
      t.boolean :damage
      t.references :balance, foreign_key: true
      t.references :product_kind, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
