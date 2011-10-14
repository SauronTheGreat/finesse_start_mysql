class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.string :name
      t.integer :number_of_employees
      t.integer :market_id
      t.integer :number_of_shifts
      t.integer :cost_to_build
      t.integer :cost_to_run
      t.integer :capacity
      t.integer :production_time_per_unit

      t.timestamps
    end
  end
end
