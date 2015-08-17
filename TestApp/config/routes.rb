Rails.application.routes.draw do
  resources :users do
    resources :contacts, only: [:index]
    resources :comments, only: [:index]
    resources :groups, only: [:show, :index]
  end

  resources :contacts do
    resources :comments, only: [:index]
  end

  resources :comments, only: [:create, :show, :update, :destroy]
  resources :contacts, only: [:create, :show, :update, :destroy]
  resources :contact_shares, only: [:create, :destroy]

end
