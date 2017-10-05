class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def validate_user
    redirect_to posts_path, alert: "You are not authorized to view this page!" unless user_signed_in?
  end

end
