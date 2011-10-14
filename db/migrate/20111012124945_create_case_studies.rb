class CreateCaseStudies < ActiveRecord::Migration
  def change
    create_table :case_studies do |t|
      t.string :name
      t.text :description
      t.integer :rounds
      t.integer :players

      t.timestamps
    end
  end
end
