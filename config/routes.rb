Rails.application.routes.draw do
  resources :doctors
  resources :vaccination_centers
  root "doctors#index"
end
