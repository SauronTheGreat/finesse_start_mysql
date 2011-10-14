class CreateMathematicalModelVariables < ActiveRecord::Migration
  def change
    create_table :mathematical_model_variables do |t|
      t.integer :mathematical_model_id
      t.string :variable_name

      t.timestamps
    end
  end
end
