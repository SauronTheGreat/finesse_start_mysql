class CreateSimulations < ActiveRecord::Migration
  def change
    create_table :simulations do |t|
      t.string :name
      t.integer :facilitator_id
      t.integer :max_players
      t.integer :max_rounds

      t.timestamps
    end
  end
end
