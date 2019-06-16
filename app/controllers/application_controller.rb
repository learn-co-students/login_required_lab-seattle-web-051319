class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	def welcome
		redirect_to login_path if current_user.nil?
	end
	
	def current_user
		session[:name]
	end
	
end