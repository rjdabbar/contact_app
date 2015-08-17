Rails.application.routes.draw do
  resources :users do
    resources :contacts, only: [:index]
  end

  resources :contacts, only: [:create, :show, :update, :destroy]
  resources :contact_shares, only: [:create, :destroy]

end
