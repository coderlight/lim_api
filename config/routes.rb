Rails.application.routes.draw do
  namespace :api do
    resources :pages
  end

  root 'home#index'
end
