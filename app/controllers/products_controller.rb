class ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_product, except: [:index, :new, :create]
  
  def index
    @products = current_user.products
  end
  
  def new
    @product = Product.new
  end

  def create
    @product = current_user.products.new(get_params)
    if @product.save
      flash[:success] = "Product has been added"
      redirect_to products_path
    else
      flash[:error] = "Issue with add product"
      render 'new'
    end
  end


  def update
    if @product.update(get_params)
      flash[:success] = "Product has been added"
      redirect_to product_path(@product)
    else
      flash[:error] = "Issue with add product"
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    flash[:success] = "Product has been deleted"
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
  def get_params
    params["product"]["product_images"] = params["product"]["product_images"].first(3) if params["product"]["product_images"].present? 
    params.require(:product).permit(:name, :price, :description, {product_images: []})
  end
end