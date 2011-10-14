class CreateConsumerCategories < ActiveRecord::Migration
  def change
    create_table :consumer_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
