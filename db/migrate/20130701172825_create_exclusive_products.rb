class CreateExclusiveProducts < ActiveRecord::Migration
  def change
    create_table :exclusive_products do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
