Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'registrations'}
  root to: 'pcos#index'
  resources :project_codes do
    collection {post :import}
  end
  resources :pcos do
    collection do
      match 'search' => 'pcos#search', via: [:get, :post], as: :search
      post :import
    end
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
