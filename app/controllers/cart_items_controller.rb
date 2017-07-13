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
    @cart_item.update(cart_item_params)

    redirect_to :back
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end

end
