class Banner < ActiveRecord::Base
  attr_accessible :image
  
  has_many :banner_images

  mount_uploader :image, ImageUploader
end
