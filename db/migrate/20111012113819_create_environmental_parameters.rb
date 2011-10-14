class CreateEnvironmentalParameters < ActiveRecord::Migration
  def change
    create_table :environmental_parameters do |t|
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
