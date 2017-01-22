Rails.application.routes.draw do
 

  # Owner signup
  get "owner_sessions/new"
  # Sitter signup
# Owner login
  get "/login/owners" => "owner_sessions#new" 
  post"/login/owners" => "owner_sessions#create"
 get "/logout/owners" => "owner_sessions#destroy"
 # Sitter login
 get "/login/sitters" => "sitter_sessions#new" 
  post"/login/sitters" => "sitter_sessions#create"
 get "/logout/sitters" => "sitter_sessions#destroy"
#Home page
  get "/home" => "welcome#index"
  

  get "/sitters" => "sitters#index"
  get "/sitters/:id" => 'sitters#show'
  get "/owners" => "owners#index"
  get "/owners/:id" => "owners#show"
  get "/pets" => "pets#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get "/pets" => "pets#index"
  get "/signup/owners" => "owners#new"
  post "/signup/owners" => "owners#create"


  get "/signup/sitters" => "sitters#new"
  post "/signup/sitters" => "sitters#create"

  #reservations

  get "/reservations" => "reservations#new"
  post "/reservations" => "reservations#create"
   get "reservations/:id"=> "reservations#show"
   patch "reservations/:id" =>"reservations#update"
   # reviews
    get "/reviews" => "reviews#new"
  post "/reviews" => "reviews#create"
   get "reviews/:id"=> "reviews#show"
end
