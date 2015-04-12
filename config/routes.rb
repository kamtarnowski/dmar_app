Rails.application.routes.draw do

  resources :opinions

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'static_pages#home'
  post 'contacts/create' => 'contacts#create' , as: :new_contact

end
