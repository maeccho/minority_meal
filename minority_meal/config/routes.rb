Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  get 'shops' => 'shops#index'
  



  end