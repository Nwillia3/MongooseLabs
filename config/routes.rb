Rails.application.routes.draw do
  resources :usercontacts
  devise_for :users
	resources :posts do
		resources :comments
	end



	root "posts#index"

	get '/about', to: 'pages#about'  #how to create a static page 
	get '/summerprograms', to: 'pages#summerprograms'
	get '/collegebound', to: 'pages#collegebound'
	get '/edtools', to: 'pages#edtools'
	get '/collegeresearchtools', to: 'pages#collegeresearchtools'
	get '/planningtools', to: 'pages#planningtools'

	match '/contacts',     to: 'contacts#new',             via: 'get'
	resources "contacts", only: [:new, :create]

	
end
