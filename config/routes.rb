Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'pages#home'
  end

  devise_scope :user do
    root to: 'devise/registrations#new'
  end

  # root :to => 'dashboard', :constraints => {user_signed_in?}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
