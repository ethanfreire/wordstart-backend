Rails.application.routes.draw do


  get 'words/:id' => 'words#show'
  get 'words/:id/edit' => 'words#update'
  post '/words' => 'words#create'
  post '/users' => 'users#create'
  delete '/words/:id' => 'words#destroy'
  patch '/words/:id' => 'words#update'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :words
  resources :users
  resources :user_words
  
end
