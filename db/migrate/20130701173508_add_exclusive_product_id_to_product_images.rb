class AddExclusiveProductIdToProductImages < ActiveRecord::Migration
  def change
    add_column :product_images, :exclusive_product_id, :integer
  end
end
