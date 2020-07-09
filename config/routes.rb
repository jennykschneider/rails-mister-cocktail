Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :ingredients, only: [:destroy]
    resources :cocktails do
      resources :ingredients, only: [:new, :create, :index]
    end
end
