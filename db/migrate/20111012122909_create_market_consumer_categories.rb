class CreateMarketConsumerCategories < ActiveRecord::Migration
  def change
    create_table :market_consumer_categories do |t|
      t.integer :market_id
      t.integer :consumer_category_id
      t.integer :value

      t.timestamps
    end
  end
end
