Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get ':slug', to: 'pages#show', as: 'page'
  # get '/show/:slug' => 'pages#show'
  root to: 'pages#index'
end
