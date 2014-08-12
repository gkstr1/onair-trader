# == Route Map
#
#                   Prefix Verb   URI Pattern                                     Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                        devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                        devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                       devise/sessions#destroy
#            user_password POST   /users/password(.:format)                       devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)                   devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                  devise/passwords#edit
#                          PATCH  /users/password(.:format)                       devise/passwords#update
#                          PUT    /users/password(.:format)                       devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                         devise/registrations#cancel
#        user_registration POST   /users(.:format)                                devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                        devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                           devise/registrations#edit
#                          PATCH  /users(.:format)                                devise/registrations#update
#                          PUT    /users(.:format)                                devise/registrations#update
#                          DELETE /users(.:format)                                devise/registrations#destroy
#           listing_orders GET    /listings/:listing_id/orders(.:format)          orders#index
#                          POST   /listings/:listing_id/orders(.:format)          orders#create
#        new_listing_order GET    /listings/:listing_id/orders/new(.:format)      orders#new
#       edit_listing_order GET    /listings/:listing_id/orders/:id/edit(.:format) orders#edit
#            listing_order GET    /listings/:listing_id/orders/:id(.:format)      orders#show
#                          PATCH  /listings/:listing_id/orders/:id(.:format)      orders#update
#                          PUT    /listings/:listing_id/orders/:id(.:format)      orders#update
#                          DELETE /listings/:listing_id/orders/:id(.:format)      orders#destroy
#                 listings GET    /listings(.:format)                             listings#index
#                          POST   /listings(.:format)                             listings#create
#              new_listing GET    /listings/new(.:format)                         listings#new
#             edit_listing GET    /listings/:id/edit(.:format)                    listings#edit
#                  listing GET    /listings/:id(.:format)                         listings#show
#                          PATCH  /listings/:id(.:format)                         listings#update
#                          PUT    /listings/:id(.:format)                         listings#update
#                          DELETE /listings/:id(.:format)                         listings#destroy
#                     root GET    /                                               listings#index
#              pages_about GET    /pages/about(.:format)                          pages#about
#                   seller GET    /seller(.:format)                               listings#seller
#            pages_contact GET    /pages/contact(.:format)                        pages#contact
#

Rails.application.routes.draw do
 

  devise_for :users
  
    resources :listings do
        resources :orders, only: [:new, :create]
    end
    
 root 'listings#index'
 
  get 'pages/about'
  get 'seller' => "listings#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"

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
