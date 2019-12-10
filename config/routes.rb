Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/door_indicator/open', to: 'door_indicator#open'
  post '/door_indicator/close', to: 'door_indicator#close'
  get '/door_indicator/show', to: 'door_indicator#show'

  root to: "door_indicator#show"
end
