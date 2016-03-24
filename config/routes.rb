Rails.application.routes.draw do
  devise_for :users

  root "users#index"   ## this will probably change. maybe a splash?

  resources :users do 
    resources :days 
  end

  resources :days ## might delete this

  # get "/days" => "days#index" 


end


## ROUTES
#                   Prefix Verb   URI Pattern                             Controller#Action
#         new_user_session GET    /users/sign_in(.:format)                devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)               devise/sessions#destroy
#            user_password POST   /users/password(.:format)               devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)           devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)          devise/passwords#edit
#                          PATCH  /users/password(.:format)               devise/passwords#update
#                          PUT    /users/password(.:format)               devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)                 devise/registrations#cancel
#        user_registration POST   /users(.:format)                        devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)                devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                   devise/registrations#edit
#                          PATCH  /users(.:format)                        devise/registrations#update
#                          PUT    /users(.:format)                        devise/registrations#update
#                          DELETE /users(.:format)                        devise/registrations#destroy
#                     root GET    /                                       users#index
#                user_days GET    /users/:user_id/days(.:format)          days#index
#                          POST   /users/:user_id/days(.:format)          days#create
#             new_user_day GET    /users/:user_id/days/new(.:format)      days#new
#            edit_user_day GET    /users/:user_id/days/:id/edit(.:format) days#edit
#                 user_day GET    /users/:user_id/days/:id(.:format)      days#show
#                          PATCH  /users/:user_id/days/:id(.:format)      days#update
#                          PUT    /users/:user_id/days/:id(.:format)      days#update
#                          DELETE /users/:user_id/days/:id(.:format)      days#destroy
#                    users GET    /users(.:format)                        users#index
#                          POST   /users(.:format)                        users#create
#                 new_user GET    /users/new(.:format)                    users#new
#                edit_user GET    /users/:id/edit(.:format)               users#edit
#                     user GET    /users/:id(.:format)                    users#show
#                          PATCH  /users/:id(.:format)                    users#update
#                          PUT    /users/:id(.:format)                    users#update
#                          DELETE /users/:id(.:format)                    users#destroy
#                     days GET    /days(.:format)                         days#index
#                          POST   /days(.:format)                         days#create
#                  new_day GET    /days/new(.:format)                     days#new
#                 edit_day GET    /days/:id/edit(.:format)                days#edit
#                      day GET    /days/:id(.:format)                     days#show
#                          PATCH  /days/:id(.:format)                     days#update
#                          PUT    /days/:id(.:format)                     days#update
#                          DELETE /days/:id(.:format)                     days#destroy