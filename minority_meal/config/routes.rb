Rails.application.routes.draw do
  devise_for :users
  get 'shops' => 'shops#index'
  



  end