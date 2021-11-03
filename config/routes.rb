Rails.application.routes.draw do
  root :to => "web/sessions#new"
  scope module: :web do
    resource :session, only: [:new, :create, :destroy]
    resources :users, only: [:new, :create]
    resources :spendings, only: [:new, :index, :create, :edit, :update, :destroy]
  end  
end
