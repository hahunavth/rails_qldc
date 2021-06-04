#PasswordResets
class PasswordResetController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    if @user.present?
      #sent email
      PasswordMailer.width(user: @user).reset.deliver_now
      redirect_to root_path, notice: "We have sent link to reset your password."
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

end
