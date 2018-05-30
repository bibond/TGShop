Rails.application.routes.draw do
  resources :users

  resources :categories do
    resources :products
  end
  resources :products
  get 'pages/home'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home', as: :root
end
