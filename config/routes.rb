Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/about', to: 'pages#about'
  get ':slug', to: 'pages#show'

  root to: 'pages#index'
end
