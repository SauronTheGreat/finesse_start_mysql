class CreateMathematicalModelConstantValues < ActiveRecord::Migration
  def change
    create_table :mathematical_model_constant_values do |t|
      t.integer :mathematical_model_constant_id
      t.integer :value
      t.integer :decision_parameter_id

      t.timestamps
    end
  end
end
