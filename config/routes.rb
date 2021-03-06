Rails.application.routes.draw do

  get 'quests', to: 'quest#index'
  get 'quests/search', to: 'quest#search'
  get 'quest/agree/:id', to: 'quest#agree'
  get 'quest/:id', to: 'quest#show'
  get 'quest/:id/edit', to: 'quest#edit'
  #get 'quest/create'
  #get 'quest/update'
  #get 'quest/destroy'
  
  get 'user/all', to: 'user#all'
  get 'user/quests', to: 'user#quests'
  get 'user/:id', to: 'user#show', as: "user"
  get 'user/', to: 'user#show'
  get 'register/', to: 'user#register'
  get 'login/', to: 'user#login'
  post 'register', to: 'user#create'
  post 'auth', to: 'user#auth'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'main_page#index'

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
  get '/*', to: redirect('/404.html')
end
