# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  def logged_in?
    !session[:user_id].nil?
  end

  def current_user
    User.find(session[:user_id])
  end

end
