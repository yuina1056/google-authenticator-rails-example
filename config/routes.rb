Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  get 'logout' => 'top#logout'
  resource :user_mfa_session, only: %i(new create)
end
