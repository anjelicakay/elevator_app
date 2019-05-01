Rails.application.routes.draw do
  namespace :api do 
    post '/buildings' => 'buildings#create'
    get '/buildings/:id' => 'buildings#show'

    post '/elevators' => 'elevators#create'
    get '/elevators/:id' => 'elevators#show'
    patch '/elevators/:id' => 'elevators#update'
  end
end
