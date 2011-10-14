class CreateFacilitators < ActiveRecord::Migration
  def change
    create_table :facilitators do |t|
      t.string :name
      t.integer :user_id
      t.integer :client_id

      t.timestamps
    end
  end
end
