Promacal::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :lines
  resources :categories
  resources :products
  resources :newsletters

  get "home/index"
  get "/empresa", to: "home#empresa"
  get "/produtos", to: "lines#index"
  get "/noticias", to: "newsletters#index"
  get "/exclusive", to: "exclusive#index"
  get "/contato", to: "contact#new"

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  root to: 'home#index'
end
