class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.string :name
      t.string :type
      t.integer :roi

      t.timestamps
    end
  end
end
