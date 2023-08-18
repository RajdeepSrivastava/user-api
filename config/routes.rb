Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'posts/create'
      get 'posts/edit'
      get 'posts/update'
    end
  end
  get 'posts/create'
  get 'posts/edit'
  get 'posts/update'
  devise_for :users

 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
end
