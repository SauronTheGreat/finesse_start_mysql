class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :market_id
      t.integer :raw_material_id

      t.timestamps
    end
  end
end
