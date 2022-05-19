Rails.application.routes.draw do

  root to: 'top_pages#top'

  get 'references', to: 'references#new'

  resources :jellyfishes, only: %i[index show] do
    resource :like, only: %i[create]
  end
  resources :ranks, only: %i[index]

  namespace :admin do
    root to: 'dashboards#index'
    get 'login', to: 'user_sessions#new'
    post 'login', to: 'user_sessions#create'
    delete 'logout', to: 'user_sessions#destroy'
    resources :jellyfishes
  end
end
