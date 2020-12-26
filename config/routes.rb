Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  root 'layouts#top'

  resources :books

  resources :users,only:[:show,:edit,:update]

  get 'users' => 'users#index'
  get 'home/about' => 'layouts#about'
  delete '/books' => 'books#destroy'

end
