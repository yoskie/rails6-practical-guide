Rails.application.routes.draw do
  namespace :staff, path: "" do
    root "top#index"
    get "login" => "sessions#new", as: :login
    resource :session, only: [ :create, :destroy ]
    resource :account, expect: [ :new, :create, :destroy ]
  end

  namespace :admin do
    root "top#index"
    get "login" => "sessions#new", as: :login
    resource :session, only: [ :crerate, :destroy ]
    resources :staff_members
  end

  namespace :customer do
    root "top#index"
  end
end
