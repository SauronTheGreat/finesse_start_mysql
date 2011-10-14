class AddNumberOfParametersToProduct < ActiveRecord::Migration
  def change
    add_column :products, :number_of_parameters, :integer
  end
end
