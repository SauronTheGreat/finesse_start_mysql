class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.integer :consumer_category_id
      t.integer :consumer_category_id
      t.integer :dealer_id
      t.integer :personal_taste
      t.integer :final_decision
      t.integer :probability_of_purchase
      t.integer :media_preference
      t.integer :media_impact
      t.integer :brand_power

      t.timestamps
    end
  end
end
