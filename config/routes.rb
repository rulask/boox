Rails.application.routes.draw do
  devise_for :users

  get 'welcome/index'
  get 'feed' => 'feed#index'
  get 'dashboard' => 'dashboard#index'

  resources :books do
    resources :comments
    resources :trades
  end

  resources :users, path: :user

  root 'welcome#index'
end
