Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      devise_for :users
      resources :packed_lunches, only: [:index]
      resources :user_orders, only: [:create]
      resources :users, only: [] do
        member do
          post :create_user_order
        end
      end
    end
  end
end
