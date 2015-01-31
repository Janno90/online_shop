module CurrentCart
  extend ActiveSupport::Concern

  def cart
    if session[:cart_id] && Cart.exists?(session[:cart_id])
      @cart = Cart.find(session[:cart_id])
    else
      setup_new_cart
    end
  end

  def setup_new_cart
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end
