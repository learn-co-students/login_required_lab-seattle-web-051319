Rails.application.routes.draw do
	
	root "application#welcome"
	
	get "/login", to: "sessions#new"
	
	post "/login", to: "sessions#create", as: "submit"
	
	post "/logout", to: "sessions#destroy"
	
	get "/show", to: "secrets#show"
	
end