class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_product(product_id)
    line_item = line_items.where(product_id: product_id).first
    if line_item.nil?
      line_item = LineItem.new(product_id: product_id)
      line_item.cart = self
      line_item.price = Product.find(product_id).price
    else
      line_item.amount += 1
    end
    line_item
  end

  def total_price
    line_items.map(&:total_price).sum
  end
end
