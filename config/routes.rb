Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #manual declaration per tutorial
  # get "/articles", to:"articles#index"

  # declares all, but will error on navigation attempt until there is a view corresponding for each of the seven RESTful default actions
  resources :articles

  # Defines the root path route ("/")
  root "articles#index"
end
