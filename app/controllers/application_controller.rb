class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

def check_signed_in
  if signed_in?
    redirect_to user_projects_path(current_user)
  else
    flash[:error] = "Please singin first!"
    redirect_to signin_path
  end
end
end
