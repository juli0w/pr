class ExclusiveProduct < ActiveRecord::Base
  attr_accessible :description, :name, :product_images_attributes

  has_many :product_images

  validates :description, :name, presence: true

  accepts_nested_attributes_for :product_images, allow_destroy: true
end

