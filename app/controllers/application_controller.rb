class ApplicationController < ActionController::Base
  def authenticate_admin!
    unless current_user.admin
      redirect_to root_path
    end
  end
end
