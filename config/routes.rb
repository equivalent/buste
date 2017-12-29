Rails.application.routes.draw do

  resources :games, only: [:create, :index] do
    collection do
      get :reset
    end
  end
  root 'games#index'
end
