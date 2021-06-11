#SessionsController
class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])

    if user.present? && user.authenticate(params[:password]) && user.trang_thai == true
      session[:user_id] = user.id
      redirect_to root_path, notice: "Logged in successfully"
    else
      flash[:alert] = 'Invalid username or password'
      render :new
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out'
  end
end
