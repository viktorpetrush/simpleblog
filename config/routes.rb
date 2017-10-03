Rails.application.routes.draw do
  resources :categories do
    resources :posts do
    end
  end

  root to: "categories#index"
end
