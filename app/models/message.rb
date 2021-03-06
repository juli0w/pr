class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :phone, :company, :email, :content, :address

  validates :name, :email, :content, presence: true
  validates :email, format: { with: %r{.+@.+\..+} }

  def initialize attributes = {}
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end