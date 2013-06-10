class AddImageToLines < ActiveRecord::Migration
  def change
    add_column :lines, :image, :string
  end
end
