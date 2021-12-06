Rails.application.routes.draw do
  resources :photos, path_names: { new: 'make', edit: 'change' }

  end
  