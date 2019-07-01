Rails.application.routes.draw do

  root :to => "cardapios#index"
  resources :cardapios
  resources :comandas
  resources :mesas
  resources :restaurantes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
