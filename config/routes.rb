Rails.application.routes.draw do
  resources :categories do
    resources :posts do
    end
  end

  resources :comments, only: [:create, :destroy]

  root to: "categories#index"
end
