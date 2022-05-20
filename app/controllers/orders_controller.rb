class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = current_user.carted_products.find_by(status: "carted")
    calculated_subtotal = 0
    calculated_tax = 0

    carted_products.each do |carted_product|
      product = carted_product.product
      quantity = carted_product.quantity
      calculated_subtotal += product.price * quantity
      calculated_tax = product.tax * quantity
    end

    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    order.save

    carted_products.each do |carted_product| ## update CartedProducts status
      carted_product.status = "purchased"
      carted_product.order_id = order.id
      carted_product.save
    end

    render json: order.as_json
  end

  def index
    @orders = current_user.orders
    render template: "orders/index"
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render template: "orders/show"
  end

  def destroy
    order = current_user.orders.find_by(id: params[:id])
    order.destroy
    render json: { massege: "Successfully remove selected item." }
  end
end
