class CreateConsumerBrandSelectionParameters < ActiveRecord::Migration
  def change
    create_table :consumer_brand_selection_parameters do |t|
      t.integer :brand_selection_parameter_id
      t.integer :min_value
      t.integer :max_value

      t.timestamps
    end
  end
end
