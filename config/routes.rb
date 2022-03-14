Rails.application.routes.draw do
  resources :urls
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post 'urls/encode', to: 'urls#encode', as: 'urls_encode'
  post  'urls/decode', to: 'urls#decode', as: 'urls_decode'
  # get 'urls/hello', to: 'urls#hello'
  # get 'urls/'
end
