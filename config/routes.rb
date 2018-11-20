Rails.application.routes.draw do
  get "login" => "users#login_form"
  post "login" => "users#login"

  post "logout" => "users#logout"

  post "users/create" => "users#create"

  get "signup" => "users#new"

  get 'users/index' => "users#index"

  get 'missions/index' => "missions#index"

  get '/' => "lesson#top"

  get "about" => "lesson#about"

  get "missions/new" => "missions#new"

  post "missions/create" => "missions#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
