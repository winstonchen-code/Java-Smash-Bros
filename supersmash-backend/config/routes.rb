Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/fighters', to: 'fighters#index'
  get '/stages', to: 'stages#index'
  
  get '/fighters/:id', to: 'fighters#show'
  post '/fighters', to: 'fighters#create'
  delete '/fighters/:id', to: 'fighters#destroy'

end
