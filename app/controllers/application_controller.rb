class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sd(var_dump)
  	render html: var_dump.inspect
  end

  def d(var_dump)
  	return var_dump.inspect
  end
end
