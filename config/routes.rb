Rails.application.routes.draw do
  root "posts#index"
  resources :posts, only: [:index, :new, :create]
  get "/help", to: "static_page#help"
  get "/company", to: "static_page#company"
  get "/kiyaku", to: "static_page#kiyaku"
  get "/search", to: "static_page#search"
  get 'sex/:sex', to: 'posts#index_by_sex', as: 'index_by_sex'
  get 'age/:age', to: 'posts#index_by_age', as: 'index_by_age'
  get 'prefecture/:prefecture', to: 'posts#index_by_prefecture', as: 'index_by_prefecture'
  get 'sitemap', to: redirect('https://s3.amazonaws.com/snapchatboardsbucket/sitemaps/sitemap.xml.gz')
end
