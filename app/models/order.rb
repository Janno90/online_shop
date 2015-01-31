class Order < ActiveRecord::Base
  has_one :cart
  has_many :line_items, through: :cart

  validates :name, :street_address, :city, :postcode, :telephone, presence: true
end
