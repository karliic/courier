Courier::Application.routes.draw do
 


  resources :somethings


  resources :orders
 

  resources :admins
 resources :deliveries

  resources :users do
       resources :deliveries
  end
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
    match '/eburger_delivered' => 'deliveries#completed_eburger'
    match '/unavailable' => 'deliveries#onroad'
    match '/onroad' => 'deliveries#courier_onroad'
    match '/done' => 'deliveries#done'
    match '/completed' => 'deliveries#completed'
    match '/signup' => 'users#new'
    match '/home' => 'public#index'
    match '/logout' => 'application#logout'
    match '/signin' => 'public#signin'
    match '/order' => 'deliveries#new'
    match '/deliveries' => 'deliveries#index'
    match '/courier_salaries' => 'deliveries#courier_salaries'
    match '/salaries' => 'deliveries#complete_for_salaries'
    match '/add_burger_order' => 'deliveries#add_burger_order'
    match '/e_burger_deliveries' => 'deliveries#e_burger_deliveries'

  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'public#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end
