class SecurityController < ApplicationController
	before_action :redirect_general, only: [:index,:login]
  def index
    if request.get? and params[:error]=='1'
      @error = 'Usuario o contraseña erróneos'
    end
  end

  def redirect_general
  	if is_loged?
  		redirect_to controller: 'profile', action: 'index'
  	end
  end
  def login
  	if is_auth?(params[:username], params[:password])
  		redirect_to controller: 'profile', action: 'index'
  	else
  		redirect_to controller: 'security', action: 'index', error: '1'
  	end
  end

  def is_auth?(username, password)
  	user = User.where(username: username, password: password).last
  	if !user.nil?
  		session[:id]=user.id
  		session[:state] = true
  		return true
  	else
  		return false
  	end
  end

  def logout
  	if request.get?
  		session.destroy
  		redirect_to controller: 'security', action: 'index'
  	end
  end
end
