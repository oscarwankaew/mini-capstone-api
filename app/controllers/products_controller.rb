class ProductsController < ApplicationController
  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    if product.save
      @product = product
      render template: "products/show"
    else
      render json: { errors: product.errors.full_messages }, status: :expectation_failed
    end
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description

    if product.save
      @product = product
      render template: "products/show"
    else
      render json: { errors: product.errors.full_messages }, status: :expectation_failed
    end
  end

  def destroy
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: { message: "Deleted the product" }
  end
end

# def bicycle_listing
#     listed_bicycle = Product.first
#     render json: listed_bicycle.as_json
# end

# def TV_listing
#     listed_TV = Product.second
#     render json: listed_TV.as_json
# end

# def desk_listing
#     listed_desk = Product.last
#     render json: listed_desk.as_json
# end
