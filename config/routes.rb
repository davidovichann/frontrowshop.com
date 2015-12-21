Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/contact'
  
 #  get 'frontsnowshop.com' => 'pages/list'
   root 'static_page#list', as: 'home', via: :all

  get 'frontsnowshop.com' => 'static_page#list'

  get 'about' => 'static_page#about'

  get 'contacts' => 'static_page#contacts'

  get 'admin' => 'admin#index'

  controller :sessions do
   get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
 
  resources :users
  resources :products do
    get :download, :on => :member
    get :who_bought, on: :member
  end
 
  
    resources :orders
    resources :line_items
    resources :carts
    get 'store' => 'store#index'
  #  root 'store#index', as: 'store', via: :all


   
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
