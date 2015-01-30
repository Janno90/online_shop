class HomeController < ApplicationController
  def index
    @newest_products = Product.newest
  end
end
