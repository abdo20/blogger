Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'drinks#index'
    root to: 'articles#index'
    resources :articles do
    	resources :comments
    end
    resources :tags
    resources :users
    resources :user_sessions, only: [ :new, :create, :destroy]

    get 'login' => 'user_sessions#new'
    get 'logout' => 'user_sessions#destroy'
end
