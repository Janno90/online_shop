class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  before_create :set_default_amount

  def total_price
    amount * price
  end

private
  def set_default_amount
    self.amount = 1
  end
end
