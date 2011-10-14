class CreateMathematicalModels < ActiveRecord::Migration
  def change
    create_table :mathematical_models do |t|
      t.string :name
      t.string :formula

      t.timestamps
    end
  end
end
