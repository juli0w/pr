class Product < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :product_images_attributes

  belongs_to :category
  has_many :product_images

  validates :category_id, :description, :name, presence: true

  accepts_nested_attributes_for :product_images, allow_destroy: true
end
