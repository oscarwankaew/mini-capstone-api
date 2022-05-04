Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" =>"products#create"
  put "/products/:id" => "products#update"
  patch "/products/:id" => "products#update"

  
  # get "/products", controller: "products", action: "index"
  # get "/products/:id", controller: "products", action: "show"
  # get "/bicycle", controller: "products", action: "bicycle_listing"
  # get "/tv", controller: "products", action: "TV_listing"
  # get "/desk", controller: "products", action: "desk_listing"
end
