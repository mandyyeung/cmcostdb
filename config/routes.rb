Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'pcos#index'
  resources :project_codes do
    collection {post :import}
  end
  resources :pcos do
    collection {post :import}
  end
  resources :filters do
    collection {post :import}
  end
  resources :teams do
    collection {post :import}
  end
  resources :subcontractors do
    collection {post :import}
  end
  resources :classifications do
    collection {post :import}
  end
end
