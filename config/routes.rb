Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "kakeibos#index"
    resources :expenses, only: [:index, :new, :create, :show, :destroy, :edit, :update]
    resources :plans, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :analysis, only: [:index]
    resources :users, only: [:edit, :update]
end
