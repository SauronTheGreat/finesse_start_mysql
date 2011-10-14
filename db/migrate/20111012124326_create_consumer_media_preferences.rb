class CreateConsumerMediaPreferences < ActiveRecord::Migration
  def change
    create_table :consumer_media_preferences do |t|
      t.integer :media_id
      t.integer :consumer_category_id
      t.integer :index

      t.timestamps
    end
  end
end
