module ApplicationHelper
	def is_loged
	  	if session[:state]
	  		return true
	  	else
	  		return false
	  	end
	  end	
end
