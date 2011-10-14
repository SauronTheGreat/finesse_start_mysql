class CreateMarketDistances < ActiveRecord::Migration
  def change
    create_table :market_distances do |t|
      t.integer :source_market_id
      t.integer :distance_market_id
      t.integer :distance

      t.timestamps
    end
  end
end
