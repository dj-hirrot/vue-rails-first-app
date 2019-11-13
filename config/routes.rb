Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  namespace :api, { format: 'json' } do
    namespace :v1 do
      resources :employees, only: [:index, :show, :create, :update, :destroy]
    end
  end

  root to: 'home#index'
  match '*path' => 'home#index', via: [:get]
end
