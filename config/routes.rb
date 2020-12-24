# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # root to: 'web#home_page'
  root to: 'posts#index'
  resources :posts
end
