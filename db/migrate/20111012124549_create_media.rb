class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name
      t.integer :cost
      t.integer :impact

      t.timestamps
    end
  end
end
