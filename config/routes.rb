Gni::Application.routes.draw do

  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks' 
  }

  resources :data_sources, only: [:index, :show]
  resources :name_strings, only: [:index, :show]
  resources :name_resolvers, only: [:index, :show, :create]
  resources :nomenclatural_codes, only: [:index]
  
  match '/:id' => 'high_voltage/pages#show', as: :static, via: :get

  root to: 'home#index'

end
