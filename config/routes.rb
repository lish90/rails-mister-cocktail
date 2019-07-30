Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails do
    resources :ingredients
    resources :doses, only: [:new, :create]
  end
  # get "doses/:id", to: "doses#destroy"
  resources :doses, only: [:destroy]
end
