class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if !current_cart.products.include?(@product)
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "已加入#{ @product.title }到购物车!"
    else
      flash[:notice] = "#{ @product.title }已在购物车内!"
    end
    redirect_to :back
  end

end
