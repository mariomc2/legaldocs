Rails.application.routes.draw do

  devise_for :users
	scope "/admin" do
		resources :users
	end
	root to: "templates#index"

  resources :templates do
    member do
      post :formdata
    end
  end
  resources :items
  resources :roles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
