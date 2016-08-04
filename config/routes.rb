Rails.application.routes.draw do
  namespace :api do
    resources :contents
  end

  root 'home#index'
end
