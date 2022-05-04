class ProductsController < ApplicationController
    def product_list
        listed_product = Product.all
        render json: listed_product.as_json
    end

end
