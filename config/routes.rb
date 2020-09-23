Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "expenses#index"
    resources :expenses, only: [:index, :new, :create, :show, :destroy, :edit, :update]
end
