class CreateMathematicalModelConstants < ActiveRecord::Migration
  def change
    create_table :mathematical_model_constants do |t|
      t.integer :mathematical_model_id
      t.string :constant_name

      t.timestamps
    end
  end
end
