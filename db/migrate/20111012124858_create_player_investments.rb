class CreatePlayerInvestments < ActiveRecord::Migration
  def change
    create_table :player_investments do |t|
      t.integer :player_id
      t.integer :investment_id
      t.integer :amount

      t.timestamps
    end
  end
end
