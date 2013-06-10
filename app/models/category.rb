class Category < ActiveRecord::Base
  attr_accessible :internal, :line_id, :name, :image

  scope :internals, where(internal: true)
  scope :externals, where(internal: false)

  belongs_to :line
  has_many :products

  mount_uploader :image, ImageUploader
end
