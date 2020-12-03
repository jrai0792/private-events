Rails.application.routes.draw do
  root to: "users#new"
  resources :users, only: [:new, :create, :show]

  get 'signup', to: 'users#new', as: 'signup'
  post 'sessions', to: 'sessions#create'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
