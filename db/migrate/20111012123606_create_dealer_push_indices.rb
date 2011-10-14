class CreateDealerPushIndices < ActiveRecord::Migration
  def change
    create_table :dealer_push_indices do |t|
      t.integer :dealer_id
      t.integer :brand_id
      t.integer :push_index_value

      t.timestamps
    end
  end
end
