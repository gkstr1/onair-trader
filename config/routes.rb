# == Route Map
#
#        Prefix Verb   URI Pattern                  Controller#Action
#      listings GET    /listings(.:format)          listings#index
#               POST   /listings(.:format)          listings#create
#   new_listing GET    /listings/new(.:format)      listings#new
#  edit_listing GET    /listings/:id/edit(.:format) listings#edit
#       listing GET    /listings/:id(.:format)      listings#show
#               PATCH  /listings/:id(.:format)      listings#update
#               PUT    /listings/:id(.:format)      listings#update
#               DELETE /listings/:id(.:format)      listings#destroy
#          root GET    /                            listings#index
#   pages_about GET    /pages/about(.:format)       pages#about
# pages_contact GET    /pages/contact(.:format)     pages#contact
#

Rails.application.routes.draw do
  resources :listings
 root 'listings#index'
 
    get 'pages/about'

  get 'pages/contact'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
