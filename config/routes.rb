Rails.application.routes.draw do
  get "/cars" => "cars#index"
  # root "articles#index"
end
