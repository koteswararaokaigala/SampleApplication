Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
post '/add_to_cart/:product_id' => 'carts#add_to_cart', :as => 'add_to_cart'
#delete 'products/remove_from_cart/:id' => 'products#remove_from_cart' , :as => 'remove_from_cart'
    resources :products do
    	member do
    		get:preview
    		get:cart_list
    	end
    end
    resources :carts
    root 'products#index'
end
