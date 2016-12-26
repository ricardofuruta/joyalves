Rails.application.routes.draw do

  resources :categories, only:  [:index] do
    resources :products, only: [:index, :show]
  end

  ActiveAdmin.routes(self)
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
