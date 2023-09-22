Rails.application.routes.draw do

  get 'charges/create'
  get 'charges/new'
  get 'search/index'
  get 'cart_products/create'
  get 'cart_products/update'
  get 'cart_products/destroy'
  get 'my_account/logon'
  get 'my_account/signup'
  get 'carts/index'
  get 'carts/show'
  get 'tags/index'
  get 'tags/show'
  get 'products/index'
  get 'products/show'
  get 'product/index'
  get 'product/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'collections/index'
  get 'collections/show'
  get 'brands/index'
  get 'brands/show'
  get 'brand/index'
  get 'brand/show'
  get 'categories/index'
  get 'categories/show'
  get 'home/index'
  resources :brands, only: [:index, :show]
  resources :products, only: [:index, :show]
  resources :collections, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :cart_products, only: [:create, :update, :destroy]
  devise_for :customers, controllers: {registrations: 'registrations'}
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
