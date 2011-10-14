class CreateMathematicalModelVariableValues < ActiveRecord::Migration
  def change
    create_table :mathematical_model_variable_values do |t|
      t.integer :environmental_parameter_id
      t.integer :decision_parameter_id
      t.integer :mathematical_model_variable_id

      t.timestamps
    end
  end
end
