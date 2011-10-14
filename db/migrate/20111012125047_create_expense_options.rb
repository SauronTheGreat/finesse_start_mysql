class CreateExpenseOptions < ActiveRecord::Migration
  def change
    create_table :expense_options do |t|
      t.string :name
      t.integer :expense_id
      t.integer :amount

      t.timestamps
    end
  end
end
