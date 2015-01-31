class Order < ActiveRecord::Base
  has_one :cart
  has_many :line_items, through: :cart
end
