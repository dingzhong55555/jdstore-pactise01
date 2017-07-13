class Account::OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = current_cart.orders.order("id DESC")
  end
end
