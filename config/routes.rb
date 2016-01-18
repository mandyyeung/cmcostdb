Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'pcos#index'
  resources :pcos
  resources :filters
  resources :teams
  resources :subcontractors
  resources :classifications
end
