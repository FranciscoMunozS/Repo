Rails.application.routes.draw do
  devise_for :users, path: 'auth', path_names: { sign_in: 'login',
                                               sign_out: 'logout',
                                               password: 'secret',
                                               confirmation: 'verification',
                                               unlock: 'unblock',
                                               registration: 'register',
                                               sign_up: 'cmon_let_me_in' }
  resources :archives do
    member do
      get 'listing'
      delete :delete_file
    end
  end

  root 'archives#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
