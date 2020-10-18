Rails.application.routes.draw do
  resources :charts
  get 'home/index'
	devise_for :users
	root to: "home#index"

	resources :products
	# resource :users do
		
	# end

	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
