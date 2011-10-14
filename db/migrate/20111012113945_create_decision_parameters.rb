class CreateDecisionParameters < ActiveRecord::Migration
  def change
    create_table :decision_parameters do |t|
      t.string :name
      t.integer :value
      t.integer :mathematical_model_id

      t.timestamps
    end
  end
end
