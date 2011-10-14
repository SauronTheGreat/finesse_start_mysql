class CreatePlayerLoans < ActiveRecord::Migration
  def change
    create_table :player_loans do |t|
      t.integer :player_id
      t.integer :loan_id
      t.integer :amount

      t.timestamps
    end
  end
end
