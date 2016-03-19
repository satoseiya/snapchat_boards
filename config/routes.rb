Rails.application.routes.draw do
  root "posts#index"
  resources :posts
  get "/help", to: "static_page#help"
  get "/company", to: "static_page#company"
  get "/kiyaku", to: "static_page#kiyaku"
end
