class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :internal
      t.integer :line_id

      t.timestamps
    end
  end
end
