class CartItemsController < ApplicationController

  def destroy
    @cart = current_cart
    @cart_item = current_cart.cart_items.find_by(params[:product_id])
    @product = @cart_item.product
    @cart_item.delete

    redirect_to :back

    flash[:warning] = "已从购物车删除#{ @product.title }"
  end

  def update
    @cart = current_cart
    @cart_item = current_cart.cart_items.find_by(params[:product_id])

    if @cart_item.product.quantity >= cart_item_params[:quantity].to_i
      @cart_item.update(cart_item_params)
    else
      flash[:warning] = "数量不足以加入购物车！"
    end


    redirect_to :back
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end

end
