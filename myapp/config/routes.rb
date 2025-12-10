Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root to: "boards#index"
  resources :boards, only: [:index, :new, :create]
end

# Rails.application.routes.draw do
#   devise_for :users
#   root to: "home#index"
#   resources :articles do
#     resources :comments, only: [:new, :create]
#     resource :like, only: [:create, :destroy]
#   end

#   resource :profile, only:[:show, :edit, :update]
#   resources :favorites, only:[:index]
# end
