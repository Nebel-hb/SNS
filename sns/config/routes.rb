Rails.application.routes.draw do

  get 'user_index/show'
  # get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update, :index]
  resources :user_index, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
