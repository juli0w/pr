class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :product_images_attributes

  belongs_to :category
  has_many :product_images

  accepts_nested_attributes_for :product_images
end
