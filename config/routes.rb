Rails.application.routes.draw do
  resources :house_informations
  root to:  'house_informations#index'
end
