class UserController < ApplicationController
    before_action :set_user, only: [:xttk_accept]

  def index
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
        @user.name = ''
        @user.password = ''
      end
    else
      @user.permision = 0
    end
    if User.where('name = ?', @user.name).first || User.where('id = ?', @user.id).first
      flash[:alert] = 'Account is exists'
      render :sign_up
    else
      if @user.save
        if @user.permision == 0
          session[:user_id] = @user.id
        end 
        redirect_to root_path , notice: "Successfully create acount"
      else
        # flash[:alert] = "Something was wrong"
        render :sign_up
      end
    end
  end

  def xttk_index
    @users = User.where('trang_thai = ?', false)
  end

  def xttk_show
  end

  def xttk_accept
    # respond_to do |format|
      @user = User.where("id = ?", params[:id]).first
      if @user
        @user.trang_thai = true
        params[:user] = @user
      end
      # render text: params[:user].inspect
      if @user.update(user_params_2)
        redirect_to xac_thuc_tai_khoan_path, notice: "Xong!"
      else
        redirect_to xac_thuc_tai_khoan_path, notice: "Xong!"
      end
    # end
  end

  def xttk_reject
    @user = User.where("id = ?", params[:id]).first
    if @user && @user.destroy
        redirect_to xac_thuc_tai_khoan_path, notice: "Xong!"
      end
  end

private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :permision, :ho_va_ten, :email, :sdt, :dia_chi)
    # params.require(:user).permit(:name)
    # params.require(:user).permit_all_parameters
  end

  def user_params_2
    params.permit(:name, :password, :password_confirmation, :permision, :ho_va_ten, :email, :sdt, :dia_chi)
  end

  def is_number? string
    true if Float(string) rescue false
  end

  def set_user
    @user = User.find(params[:id])
  end
end

# def create
#   @tam_tru
#   @user = User.find(session[:user_id])
#   if @user.permision == 1
#     if NguoiDan.exists?(:so_cmnd => @user.name)
#     @nguoi_dan = NguoiDan.find_by(:so_cmnd => @user.name)
#       if @nguoi_dan.present?
#         @tam_trus = TamTru.ficlass UserController < ApplicationController

#       end
#     end
#   end
# end
