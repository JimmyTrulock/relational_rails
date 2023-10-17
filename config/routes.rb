Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/authors", to: "authors#index"
  get "/authors/new", to: "authors#new"
  get "/authors/:id", to: "authors#show"
  get "/books", to: "books#index"
  get "/books/:id", to: "books#show"
  get "/authors/:id/books", to: "authorbooks#index"
  get "/authors/:id/edit", to: "authors#edit"
  get "/authors/:id/books/new", to: "books#new"
  post "/authors", to: "authors#create"
  patch "/authors", to: "authors#update"
  post "/books", to: "books#create"
  get "/books/:id/edit", to: "books#edit"
  patch "/books", to: "books#update"
  delete "/authors/:id", to: "authors#destroy"
  delete "/books/:id", to: "books#destroy"
end
