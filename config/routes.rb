Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#my_portfolio'
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stock', to: "stocks#search_stock"
end
