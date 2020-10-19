class HomeController < ApplicationController
  def index
    @product = Product.published_products
  end
end
