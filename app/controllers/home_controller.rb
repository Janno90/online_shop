class HomeController < ApplicationController
  def index
    @categories = Category.all
    @newest_products = Product.newest
  end
end
