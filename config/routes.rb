Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "activities#index"

  resources :projects do
    resources :activities
    resources :building_units, :path => "progress"
  end
end
