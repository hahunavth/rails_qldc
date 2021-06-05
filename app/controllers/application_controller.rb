class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user_id]

      if User.find(session[:user_id])
        Current.user = User.find(session[:user_id])
      else
        reset_session :id
        redirect_to sign_in_path
      end
    end
  end

  def require_user_logged_in!
    redirect_to sign_in_path, alert: 'You must be signin to do that.' if Current.user.nil?
  end
end
