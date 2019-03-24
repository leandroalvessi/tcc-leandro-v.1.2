class CreateProductKinds < ActiveRecord::Migration[5.2]
  def change
    create_table :product_kinds do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
