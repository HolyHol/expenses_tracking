Rails.application.routes.draw do
  root :to => "web/spendings#index"
  scope module: :web do
    resource :session, only: [:new, :create, :destroy]
    
    resources :users, only: [:new, :create] do
      scope module: 'user' do
        resources :spendings, only: [:index]
      end
    end
    resources :spendings, only: [:new, :index, :create, :edit, :update, :destroy]
  end  
end
