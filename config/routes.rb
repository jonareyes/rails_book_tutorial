Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :books, only: [:index, :new, :create]
	resources :authors, except: [:destroy]
	root 'pages#home'
end
