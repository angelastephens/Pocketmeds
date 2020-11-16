Rails.application.routes.draw do 
  get 'medications/index'
  post 'sessions/create'
  delete 'sessions/destroy'
  get 'auth/:provider/callback', to: 'omniauth#create'
  root 'static#new'

  resources :users, only:[:create, :show, :edit, :update, :destroy]
  
  resources :refills, only:[:create, :index] 


  resources  :prescriptions do
    resources :refills
  
  end
  


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
