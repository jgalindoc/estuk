class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	rescue_from CanCan::AccessDenied do |exception|
		redirect_to root_path, notice: "You are not authorized to access this area" 
	end  
end
