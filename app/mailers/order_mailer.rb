class OrderMailer < ApplicationMailer

  def notify_order_placed(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: @user.email, subject: "[jDstore] 感谢你完成本次下单，以下是您这次的购物明细#{order.token}")
  end

  def apply_cancel(order)
    @order = order
    @user = order.user
    @product_lists = @order.product_lists

    mail(to: "dingzhong55555@gmail.com", subject: "[JDstore]用户#{user.emails}申请取消订单#{order.token}")

  end

end
