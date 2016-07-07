Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  get 'tweets' => 'tweets#index'
  get 'tweets/new' => 'tweets#new'
  post 'tweets' => 'tweets#create'



  end