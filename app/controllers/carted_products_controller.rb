class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      order_id: params[:order_id],
      status: "carted",
    )
    # carted_products.save
    render json: carted_products.as_json
  end

  def index
    carted_products = current_user.carted_products.find_by(status: "carted")
    render json: carted_products.as_json
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id: params[:id], status: "carted")
    carted_product.status = "removed"
    carted_product.save
    render json: { massege: "Selected item has been removed from your cart." }
  end
end
