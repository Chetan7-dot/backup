Rails.application.routes.draw do
  resources :players
  resources :users 
  resources :employees
  resources :books
  resources :customers do
    member do 
      get 'block'
    end
    collection do
      get 'un_block_all'
    end
  end
  resources :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
