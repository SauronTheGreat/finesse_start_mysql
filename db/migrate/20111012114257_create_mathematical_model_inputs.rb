class CreateMathematicalModelInputs < ActiveRecord::Migration
  def change
    create_table :mathematical_model_inputs do |t|
      t.integer :mathematical_model_id
      t.integer :environmental_parameter_id

      t.timestamps
    end
  end
end
