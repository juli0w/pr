class Newsletter < ActiveRecord::Base
  attr_accessible :content, :published_at, :title, :image

  mount_uploader :image, ImageUploader
end
