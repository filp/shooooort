Rails.application.routes.draw do
  namespace :api do
    root "root#index"
  end
end
