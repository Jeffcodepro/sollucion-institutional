Rails.application.routes.draw do
  root "pages#home"

  get "solucoes", to: "solutions#index", as: :solutions
  get "solucoes/:slug", to: "solutions#show", as: :solution

  get "stack", to: "stack#index", as: :stack

  get "blog", to: "blog#index", as: :blog
  get "blog/:slug", to: "blog#show", as: :blog_post

  get "planos", to: "plans#index", as: :plans

  get "contato", to: "contact_leads#new", as: :contact
  post "contato", to: "contact_leads#create", as: :contact_leads
end
