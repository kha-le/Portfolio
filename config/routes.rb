Rails.application.routes.draw do
  root to: 'skills#index'

    resources :skills do
      resources :comments
  end
end
