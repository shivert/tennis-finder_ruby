# == Route Map
#
# Note: Google::Cloud::Logging is disabled because it failed to authorize with the service. (Failed to open TCP connection to 169.254.169.254:80 (Host is down - connect(2) for "169.254.169.254" port 80)) Falling back to the default Rails logger.
# Note: Google::Cloud::Debugger is disabled because it failed to authorize with the service. (Failed to open TCP connection to 169.254.169.254:80 (Host is down - connect(2) for "169.254.169.254" port 80))
# Note: Google::Cloud::ErrorReporting is disabled because it failed to authorize with the service. (Failed to open TCP connection to 169.254.169.254:80 (Host is down - connect(2) for "169.254.169.254" port 80))
# Note: Google::Cloud::Trace is disabled because it failed to authorize with the service. (Failed to open TCP connection to 169.254.169.254:80 (Host is down - connect(2) for "169.254.169.254" port 80))
#     Prefix Verb   URI Pattern                         Controller#Action
# todo_items GET    /todos/:todo_id/items(.:format)     items#index
#            POST   /todos/:todo_id/items(.:format)     items#create
#  todo_item GET    /todos/:todo_id/items/:id(.:format) items#show
#            PATCH  /todos/:todo_id/items/:id(.:format) items#update
#            PUT    /todos/:todo_id/items/:id(.:format) items#update
#            DELETE /todos/:todo_id/items/:id(.:format) items#destroy
#      todos GET    /todos(.:format)                    todos#index
#            POST   /todos(.:format)                    todos#create
#       todo GET    /todos/:id(.:format)                todos#show
#            PATCH  /todos/:id(.:format)                todos#update
#            PUT    /todos/:id(.:format)                todos#update
#            DELETE /todos/:id(.:format)                todos#destroy
# auth_login POST   /auth/login(.:format)               authentication#authenticate
#     signup POST   /signup(.:format)                   users#create
# 

Rails.application.routes.draw do
  resources :todos do
    resources :items
  end

  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
end
