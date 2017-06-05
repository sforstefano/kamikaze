Rails.application.routes.draw do

  get 'setting/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
root :to => "peliculas#index"
get '/about' => 'statics#about', :as => 'about'
  devise_for :users

  #get 'statics/index'

  #get 'statics/about'

resources :peliculas do
	resources :comentarios
end

resources :settings





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
