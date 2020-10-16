Rails.application.routes.draw do
  get 'home/index'
	devise_for :users
	root to: "home#index"

	resource :users do
		resource :products
	end

	# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
