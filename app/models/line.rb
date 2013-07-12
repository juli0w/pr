class Line < ActiveRecord::Base
  attr_accessible :description, :name, :title, :image

  has_many :categories

  validates :description, :name, :title, presence: true

  mount_uploader :image, ImageUploader
end
