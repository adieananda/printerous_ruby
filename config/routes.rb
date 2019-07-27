Rails.application.routes.draw do
	resources :organizations , param: :organization_id do
		member do
			resources :person
		end
	end
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
