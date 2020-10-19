class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_cart

  def index
    @products = @cart.products
  end
  
  def add_to_cart
    @cart.products << Product.find(params[:product_id])
    
    if @cart.save
      flash[:success] = "Product added to cart"
      redirect_to root_path 
    else
      render 'new'
    end
    #byebug
  end

  def destroy
    product = Product.find_by(id: params[:id])
    @cart.products.delete(product)
    flash[:success] = "Product added to cart"
    redirect_to carts_path 
  end



  private

  def get_cart
    @cart = current_user.cart
  end
end
