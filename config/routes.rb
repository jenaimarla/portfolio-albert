Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root to: 'pages#home'
    get 'about', to: 'pages#about'
    get 'menu', to: 'pages#menu'

  resources :archives, only: [:index]
  resources :projects, only: [:index, :show]
end
