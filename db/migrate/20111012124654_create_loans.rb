class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :type
      t.integer :tenure
      t.integer :interest_rate

      t.timestamps
    end
  end
end
