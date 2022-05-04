class ProductsController < ApplicationController
    def index
        listed_products = Product.all
        render json: listed_products.as_json
    end
    
    def show
        listed_product = Product.find_by(id: params["id"])
        render json: listed_product.as_json
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

end
