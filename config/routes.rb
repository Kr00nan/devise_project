Rails.application.routes.draw do
root "inspirations#index"
devise_for :users

resources :inspirations
end
