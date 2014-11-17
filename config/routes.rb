Rails.application.routes.draw do


	resources :photos,:path_names=>{:new=>:upload}
  devise_for :users,
						 :path => "user",
						 :controllers => {
		      		:registrations => "users/registrations",
					    :passwords     => "users/passwords",
							:sessions      => "users/sessions"
	    				},
						:path_names => {
							:sign_up => 'signup',
							:sign_in =>'login',
							:sign_out =>'logout'
						}
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 root 'welcomes#index'
 get ':username'           => 'users#show',  :as=>:user_home
 get ":username/recent"          =>"users#recent",  :as=>"recent_users"
 
 get 'settings/edit'      =>'users#edit', :as=>"edit_settings"
 patch 'settings/edit'    =>'users#update'
 
 get 'settings/email'    =>"users#email",      :as=> "email_settings"

 resources :users, only: [:password , :profile] ,:path=>"settings" do
	 collection do
	 	get :password 
	 	patch :password
		get :profile 
		patch :profile
		get :social
		patch :social
	 end
 end

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
