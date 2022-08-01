Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "activities#index"

  resources :projects do
    resources :activities

    get "records", to: "records#index"
    get "reports", to: "reports#index"

    resources :building_units, only: [:edit, :update, :destroy] do
      resources :records
    end
  end
end
