Rails.application.routes.draw do
  get 'missions/index' => "missions#index"

  get '/' => "lesson#top"

  get "about" => "lesson#about"

  get "missions/new" => "missions#new"

  post "missions/create" => "missions#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
