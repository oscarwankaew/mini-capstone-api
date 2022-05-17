Rails.application.routes.draw do
  ## PRODUCT routes
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  ## SUPPLIER routes
  get "/suppliers" => "suppliers#index"
  get "/suppliers/:id" => "suppliers#show"
  post "/suppliers" => "suppliers#create"
  patch "/suppliers/:id" => "suppliers#update"
  delete "/suppliers/:id" => "suppliers#destroy"

  ## USER routes
  post "/users" => "users#create"

  ## SESSIONS routes
  post "/sessions" => "sessions#create"

  ## ORDERS routes
  post "/orders" => "orders#create"
  get "/orders" => "orders#index"
  get "/orders/:id" => "orders#show"
  delete "/orders/:id" => "orders#destroy"
end
