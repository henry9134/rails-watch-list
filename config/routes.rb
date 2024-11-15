  Rails.application.routes.draw do
    root to: 'lists#index'
    get "up" => "rails/health#show", as: :rails_health_check
    resources :lists, only: [:index, :show, :new, :create] do
      resources :bookmarks, only:[:new, :create, :destroy]
    end
  end
