class MainController < ApplicationController
  # def index
  #   before_session set_current_user
  #
  # def set_current_user
  #   if session[:user_id]
  #     @user = User.find(session[:user_id])
  #   end
  # end
  before_action :set_current_user



  def set_current_user
    if session[:user_id]
      Current.user = User.find(session[:user_id])
    end
  end
end
