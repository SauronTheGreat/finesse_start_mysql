class CreateRoundEnvironmentalParameters < ActiveRecord::Migration
  def change
    create_table :round_environmental_parameters do |t|
      t.integer :round
      t.integer :environmental_parameter_id

      t.timestamps
    end
  end
end
