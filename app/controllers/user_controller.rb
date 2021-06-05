class UserController < ApplicationController
  def sign_in
  end

  def sign_up
    @user = User.new
  end

  def create
    # render plain: params[:user]
    @user = User.new(user_params)
    if is_number? @user.name
      @user.permision = 1
      if !NguoiDan.where('so_cmnd = ?', @user.name).any?
        # redirect_to sign_up_path , alert: "Account is exists"
        # render :sign_up
        @user.name = ''
        @user.password = ''
      end
    else
      @user.permision = 0
    end
    if !User.where('name = ?', @user.name).any?
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path , notice: "Successfully create acount"
    else
      # flash[:alert] = "Something was wrong"
      render :sign_up
    end
  else
    flash[:alert] = 'Account is exists'
  end
  end

private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :permision)
  end

  def is_number? string
    true if Float(string) rescue false
  end
end

# def create
#   @tam_tru
#   @user = User.find(session[:user_id])
#   if @user.permision == 1
#     if NguoiDan.exists?(:so_cmnd => @user.name)
#     @nguoi_dan = NguoiDan.find_by(:so_cmnd => @user.name)
#       if @nguoi_dan.present?
#         @tam_trus = TamTru.find_by(nguoi_dan_id: @nguoi_dan.id)
#       end
#     end
#   end
# end
