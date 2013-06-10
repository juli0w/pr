class Line < ActiveRecord::Base
  attr_accessible :description, :name, :title, :image

  has_many :categories

  mount_uploader :image, ImageUploader
end
