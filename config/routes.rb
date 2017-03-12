Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }

  root to: "pages#home"

  get 'templates/:action' => 'templates'

  namespace :api do
    resources :library, only:%i(index)
  end
end
