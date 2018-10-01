class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :full_name

  def authenticate
    redirect_to :login unless user_signed_in?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    # converts current_user to a boolean by negating the negation
    !!current_user
  end

  def full_name
    current_user.first_name + " " + current_user.last_name
  end

end
