class UserController < ApplicationController
  def sign_in
  end

  def sign_up
    @user = User.new
  end

  def create
    # render plain: params[:user]
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path , notice: "Successfully create acount"
    else
      # flash[:alert] = "Something was wrong"
      render :sign_up
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
