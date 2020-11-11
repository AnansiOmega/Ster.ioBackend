Rails.application.routes.draw do
  resources :songs
  resources :song_collabs
  resources :collab_tracks
  resources :users
  post '/songCollab', to: 'songs#song_collab'
  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  delete '/song_collab', to: 'song_collabs#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
