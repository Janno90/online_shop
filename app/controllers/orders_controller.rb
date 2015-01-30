class OrdersController < ApplicationController
  def new
    if cart.empty?
      flash.now.alert = t('cart.empty_cart')
      @line_items = cart.line_items
      render 'carts/show' and return
    end
    @order = Order.new
  end
end
