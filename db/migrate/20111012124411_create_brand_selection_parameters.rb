class CreateBrandSelectionParameters < ActiveRecord::Migration
  def change
    create_table :brand_selection_parameters do |t|
      t.string :name

      t.timestamps
    end
  end
end
