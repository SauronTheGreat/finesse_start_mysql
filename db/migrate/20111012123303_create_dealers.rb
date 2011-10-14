class CreateDealers < ActiveRecord::Migration
  def change
    create_table :dealers do |t|
      t.string :name
      t.integer :market_id
      t.integer :catchment_of_consumers
      t.integer :desired_commission
      t.integer :final_commission
      t.integer :dealer_category_id

      t.timestamps
    end
  end
end
