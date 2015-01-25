class CartsController < ApplicationController
  def show
    @line_items = @cart.line_items
  end

  def destroy
    @cart.destroy
    redirect_to products_path
  end
end
