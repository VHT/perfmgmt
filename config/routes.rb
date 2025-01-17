Rails.application.routes.draw do
  root 'sessions#new'
  get "/health_check" => 'sessions#index'
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  resources :users do
    resources :meetings
  end
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
