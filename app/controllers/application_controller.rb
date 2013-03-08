class ApplicationController < ActionController::Base
  protect_from_forgery

  include Devise::Controllers::Helpers

  before_filter :logged_in

  helper_method :current_account


  def current_account
    @current_account = current_user.account
  end

  private
  def logged_in
    authenticate_user!
  end
end
