Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }



  resources :archives do
    member do
      get 'listing'
      delete :delete_file
    end
  end

  root 'archives#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
