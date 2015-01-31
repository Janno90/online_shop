class OrdersController < ApplicationController
  def new
    if cart.empty?
      flash.now.alert = t('cart.empty_cart')
      @line_items = cart.line_items
      render 'carts/show' and return
    end
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.cart = cart
    if @order.valid?
      @order.save
      flash.now.notice = "Order has been sent!"
      setup_new_cart
    else
      flash.now.alert = "Fill all required fields."
      render action: :new
    end
  end

protected
  def order_params
    params.require(:order).permit(
      :name, :street_address,
      :city, :postcode,
      :telephone
    )
  end
end
