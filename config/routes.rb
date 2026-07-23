Rails.application.routes.draw do
  root "pages#home"

  get "produtos", to: "products#index", as: :products
  get "produtos/:slug", to: "products#show", as: :product

  get "blog", to: "blog#index", as: :blog
  get "blog/:slug", to: "blog#show", as: :blog_post

  get "contato", to: "contact_leads#new", as: :contact
  post "contato", to: "contact_leads#create", as: :contact_leads

  get "privacidade", to: "pages#privacidade", as: :privacidade
  get "termos", to: "pages#termos", as: :termos
  get "exclusao-de-dados", to: "pages#data_deletion", as: :data_deletion
end
