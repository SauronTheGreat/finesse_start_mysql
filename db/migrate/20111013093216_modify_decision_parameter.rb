class ModifyDecisionParameter < ActiveRecord::Migration
  def up
    add_column :decision_parameters,:name,:string
    remove_column :decision_parameters,:available_decision_parameter_id

  end

  def down
  end
end
