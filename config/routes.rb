Rails.application.routes.draw do
  
  root to: "sessions#new"
  resources :users, only: [:new, :create, :show]
  resources :events
  resources :events do
    resources :invitations
  end
  resources :attendances

  get 'signup', to: 'users#new', as: 'signup'
  post 'login', to: 'sessions#create'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
