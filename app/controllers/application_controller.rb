class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def is_loged?
  	if session[:state]
  		return true
  	else
  		return false
  	end
  end
  def redirect_not_loged
  	if !is_loged?
  		redirect_to controller: "security", action: "index"
  	end
  end
end
