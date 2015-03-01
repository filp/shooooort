Rails.application.routes.draw do
  namespace :api do
    root "root#index"

    resources :short_url, only: [:show]
  end
end
