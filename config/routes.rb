Rails.application.routes.draw do

  devise_for :users
  
  root "shops#top"
  
  resources :shops, only: [:index, :show, :new ,:create] do
    resources :comments, only: :create
  end


end
