Rails.application.routes.draw do
  
  get 'aboutus/index'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :professors
  resources :students
  resources :aboutus
  get 'home/index'
  root 'home#index'

end
