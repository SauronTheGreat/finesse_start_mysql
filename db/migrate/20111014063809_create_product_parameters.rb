class CreateProductParameters < ActiveRecord::Migration
  def change
    create_table :product_parameters do |t|
      t.integer :product_id
      t.integer :raw_material_id
      t.integer :value

      t.timestamps
    end
  end
end
