BooksKreatio::Application.routes.draw do
  get "books/new"
  get "books/about"
  get "books/boks"
  get "books/category"
  get "books/myaccount"
  get "books/contact"

  get "books/find"

  post "books/create"
  post "uploads/uploadfile"

  root :to => "books#new"
end
