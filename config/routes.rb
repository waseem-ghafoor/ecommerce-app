Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'
	
	devise_for :users
	root to: "home#index"

	resources :products
	resources :carts, only: [:index, :destroy]
	get "add_to_cart/:product_id", to: 'carts#add_to_cart', as: 'add_to_cart'


	# resource :users do
		
	# end

	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
