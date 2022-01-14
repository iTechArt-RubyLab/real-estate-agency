class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def authenticate_user!
    redirect_to new_user_session_path unless user_signed_in?
    super
  end
end
