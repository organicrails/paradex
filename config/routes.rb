Rails.application.routes.draw do
  resources :paradoxes
  #create namespace
  namespace :api do
    resources :paradoxes
  end
end