Rails.application.routes.draw do

  get 'eveningservices/index'

  get 'eveningservices/new'

  get 'eveningservices/edit'

  get 'eveningservices/show'

  get 'dayservices/index'

  get 'dayservices/new'

  get 'dayservices/edit'

  get 'dayservices/show'

  get 'reset/edit'
  get 'reset/new'


resources :hotels do
      resources :rooms, shallow: true
end
resources :users do
    resources :messages, shallow: true
    resources :stays do
      put :dndOn, :on => :collection
      put :dndOn, :on => :collection
      resources :work_orders, shallow: true
      resources :dayservices, shallow: true
      resources :eveningservices, shallow: true
    end
end

  #what is this???
  resources :resets, only: [:new, :edit, :create, :update]

get "/", to: "sessions#login"
  #login
  get '/users/:user_id/work_orders', to: "work_orders#index", as: "user_work_orders"
  get '/users/:user_id/dayservices', to: "dayservices#index", as: "user_dayservices"
  get '/users/:user_id/eveningservices', to: "eveningservices#index", as: "user_eveningservices"
  

  get 'login', to: "sessions#login", as: "login"
  post 'login', to: "sessions#attempt_login"

  #signup
  get '/signup', to: "sessions#signup", as: 'signup'
  post '/signup', to: "sessions#create"

  #logout
  delete 'logout', to: "sessions#logout", as: "logout"
  
#                       Prefix Verb   URI Pattern                                                  Controller#Action
#        eveningservices_index GET    /eveningservices/index(.:format)                             eveningservices#index
#          eveningservices_new GET    /eveningservices/new(.:format)                               eveningservices#new
#         eveningservices_edit GET    /eveningservices/edit(.:format)                              eveningservices#edit
#         eveningservices_show GET    /eveningservices/show(.:format)                              eveningservices#show
#            dayservices_index GET    /dayservices/index(.:format)                                 dayservices#index
#              dayservices_new GET    /dayservices/new(.:format)                                   dayservices#new
#             dayservices_edit GET    /dayservices/edit(.:format)                                  dayservices#edit
#             dayservices_show GET    /dayservices/show(.:format)                                  dayservices#show
#                   reset_edit GET    /reset/edit(.:format)                                        reset#edit
#                    reset_new GET    /reset/new(.:format)                                         reset#new
#                  hotel_rooms GET    /hotels/:hotel_id/rooms(.:format)                            rooms#index
#                              POST   /hotels/:hotel_id/rooms(.:format)                            rooms#create
#               new_hotel_room GET    /hotels/:hotel_id/rooms/new(.:format)                        rooms#new
#                    edit_room GET    /rooms/:id/edit(.:format)                                    rooms#edit
#                         room GET    /rooms/:id(.:format)                                         rooms#show
#                              PATCH  /rooms/:id(.:format)                                         rooms#update
#                              PUT    /rooms/:id(.:format)                                         rooms#update
#                              DELETE /rooms/:id(.:format)                                         rooms#destroy
#                       hotels GET    /hotels(.:format)                                            hotels#index
#                              POST   /hotels(.:format)                                            hotels#create
#                    new_hotel GET    /hotels/new(.:format)                                        hotels#new
#                   edit_hotel GET    /hotels/:id/edit(.:format)                                   hotels#edit
#                        hotel GET    /hotels/:id(.:format)                                        hotels#show
#                              PATCH  /hotels/:id(.:format)                                        hotels#update
#                              PUT    /hotels/:id(.:format)                                        hotels#update
#                              DELETE /hotels/:id(.:format)                                        hotels#destroy
#                user_messages GET    /users/:user_id/messages(.:format)                           messages#index
#                              POST   /users/:user_id/messages(.:format)                           messages#create
#             new_user_message GET    /users/:user_id/messages/new(.:format)                       messages#new
#                 edit_message GET    /messages/:id/edit(.:format)                                 messages#edit
#                      message GET    /messages/:id(.:format)                                      messages#show
#                              PATCH  /messages/:id(.:format)                                      messages#update
#                              PUT    /messages/:id(.:format)                                      messages#update
#                              DELETE /messages/:id(.:format)                                      messages#destroy
#             dndOn_user_stays PUT    /users/:user_id/stays/dndOn(.:format)                        stays#dndOn
#                              PUT    /users/:user_id/stays/dndOn(.:format)                        stays#dndOn
#        user_stay_work_orders GET    /users/:user_id/stays/:stay_id/work_orders(.:format)         work_orders#index
#                              POST   /users/:user_id/stays/:stay_id/work_orders(.:format)         work_orders#create
#     new_user_stay_work_order GET    /users/:user_id/stays/:stay_id/work_orders/new(.:format)     work_orders#new
#              edit_work_order GET    /work_orders/:id/edit(.:format)                              work_orders#edit
#                   work_order GET    /work_orders/:id(.:format)                                   work_orders#show
#                              PATCH  /work_orders/:id(.:format)                                   work_orders#update
#                              PUT    /work_orders/:id(.:format)                                   work_orders#update
#                              DELETE /work_orders/:id(.:format)                                   work_orders#destroy
#        user_stay_dayservices GET    /users/:user_id/stays/:stay_id/dayservices(.:format)         dayservices#index
#                              POST   /users/:user_id/stays/:stay_id/dayservices(.:format)         dayservices#create
#     new_user_stay_dayservice GET    /users/:user_id/stays/:stay_id/dayservices/new(.:format)     dayservices#new
#              edit_dayservice GET    /dayservices/:id/edit(.:format)                              dayservices#edit
#                   dayservice GET    /dayservices/:id(.:format)                                   dayservices#show
#                              PATCH  /dayservices/:id(.:format)                                   dayservices#update
#                              PUT    /dayservices/:id(.:format)                                   dayservices#update
#                              DELETE /dayservices/:id(.:format)                                   dayservices#destroy
#    user_stay_eveningservices GET    /users/:user_id/stays/:stay_id/eveningservices(.:format)     eveningservices#index
#                              POST   /users/:user_id/stays/:stay_id/eveningservices(.:format)     eveningservices#create
# new_user_stay_eveningservice GET    /users/:user_id/stays/:stay_id/eveningservices/new(.:format) eveningservices#new
#          edit_eveningservice GET    /eveningservices/:id/edit(.:format)                          eveningservices#edit
#               eveningservice GET    /eveningservices/:id(.:format)                               eveningservices#show
#                              PATCH  /eveningservices/:id(.:format)                               eveningservices#update
#                              PUT    /eveningservices/:id(.:format)                               eveningservices#update
#                              DELETE /eveningservices/:id(.:format)                               eveningservices#destroy
#                   user_stays GET    /users/:user_id/stays(.:format)                              stays#index
#                              POST   /users/:user_id/stays(.:format)                              stays#create
#                new_user_stay GET    /users/:user_id/stays/new(.:format)                          stays#new
#               edit_user_stay GET    /users/:user_id/stays/:id/edit(.:format)                     stays#edit
#                    user_stay GET    /users/:user_id/stays/:id(.:format)                          stays#show
#                              PATCH  /users/:user_id/stays/:id(.:format)                          stays#update
#                              PUT    /users/:user_id/stays/:id(.:format)                          stays#update
#                              DELETE /users/:user_id/stays/:id(.:format)                          stays#destroy
#                        users GET    /users(.:format)                                             users#index
#                              POST   /users(.:format)                                             users#create
#                     new_user GET    /users/new(.:format)                                         users#new
#                    edit_user GET    /users/:id/edit(.:format)                                    users#edit
#                         user GET    /users/:id(.:format)                                         users#show
#                              PATCH  /users/:id(.:format)                                         users#update
#                              PUT    /users/:id(.:format)                                         users#update
#                              DELETE /users/:id(.:format)                                         users#destroy
#                       resets POST   /resets(.:format)                                            resets#create
#                    new_reset GET    /resets/new(.:format)                                        resets#new
#                   edit_reset GET    /resets/:id/edit(.:format)                                   resets#edit
#                        reset PATCH  /resets/:id(.:format)                                        resets#update
#                              PUT    /resets/:id(.:format)                                        resets#update
#                              GET    /                                                            sessions#login
#             user_work_orders GET    /users/:user_id/work_orders(.:format)                        work_orders#index
#                        login GET    /login(.:format)                                             sessions#login
#                              POST   /login(.:format)                                             sessions#attempt_login
#                       signup GET    /signup(.:format)                                            sessions#signup
#                              POST   /signup(.:format)                                            sessions#create
#                       logout DELETE /logout(.:format)                                            sessions#logout
end
