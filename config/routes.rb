# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'web#index'
  # root to: 'posts#index'
  resources :posts
  resources :users do
    resources :posts
  end

  resources :posts do
    resources :comments
  end
end
