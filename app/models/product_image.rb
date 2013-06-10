class ProductImage < ActiveRecord::Base
  attr_accessible :description, :image, :product_id

  belongs_to :product

  mount_uploader :image, ProductImageUploader
end
