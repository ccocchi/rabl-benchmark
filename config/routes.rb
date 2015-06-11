Rails.application.routes.draw do
  resources :posts, only: [:index] do
    collection do
      get :without_extend
    end
  end

  resources :users, only: [:show] do
    member do
      get :with_extend
      get :deep_nesting
      get :with_partial
    end
  end
end
