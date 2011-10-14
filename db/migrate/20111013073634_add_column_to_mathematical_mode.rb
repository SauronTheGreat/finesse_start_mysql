class AddColumnToMathematicalMode < ActiveRecord::Migration
  def change
    add_column :mathematical_models,:number_of_constants,:integer
    add_column :mathematical_models,:number_of_variables,:integer

  end
end
