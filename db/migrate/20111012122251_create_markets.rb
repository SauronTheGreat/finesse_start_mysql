class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.integer :catchment_of_dealers
      t.integer :catchment_of_vendors

      t.timestamps
    end
  end
end
