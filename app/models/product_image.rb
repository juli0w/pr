class ProductImage < ActiveRecord::Base
  attr_accessible :description, :image, :product_id, :exclusive_product_id

  belongs_to :product
  belongs_to :exclusive_product

  mount_uploader :image, ProductImageUploader
end
