Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
  	resources :post_comments, only: [:create, :destroy]
  end

  resources :categories, only: [:show, :new, :create]

  root :to => 'posts#index'
  get '/result' => 'search#search', as: 'result'
end
