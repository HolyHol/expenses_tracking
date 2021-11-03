Rails.application.routes.draw do
  root :to => "web/sessions#new"
  scope module: :web do
    resource :session, only: [:new, :create, :destroy]
    resources :users, only: [:new, :create]
  end  
end
