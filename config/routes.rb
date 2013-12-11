BooksKreatio::Application.routes.draw do
  get "books/new"
  get "books/about"
  get "books/boks"
  get "books/category"
  get "books/my_account"
  get "books/contact"
  get "books/find"
  post "uploads/uploadFile"

  root :to => "books#new"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  post "books/create"
end
