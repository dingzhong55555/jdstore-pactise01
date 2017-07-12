class CartsController < ApplicationController

  def clean
    current_cart.clean!
    redirect_to carts_path
    flash[:warning] = "购物车已清空！"
  end
end
