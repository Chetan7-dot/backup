Rails.application.routes.draw do
  resources :suppliers
  resources :products
  root "articles#index"
  
  resources :articles
end
