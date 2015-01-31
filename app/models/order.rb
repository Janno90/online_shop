class Order < ActiveRecord::Base
  has_one :cart
  has_many :line_items, through: :cart

  validates :cart, presence: true
  validates_associated :cart

  validate :cart_is_not_empty

  validates :name, :street_address, :city, :postcode, :telephone, presence: true

protected
  def cart_is_not_empty
    if cart.empty?
      errors[:cart] << 'is empty'
    end
  end
end
