class CreateDealerCategories < ActiveRecord::Migration
  def change
    create_table :dealer_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
