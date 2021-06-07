class NguoiDansController < ApplicationController
  before_action :require_user_logged_in!

  before_action :set_nguoi_dan, only: %i[ show edit update destroy ]

  # GET /nguoi_dans or /nguoi_dans.json
  def index
    @nguoi_dans = NguoiDan.all
  end

  # GET /nguoi_dans/1 or /nguoi_dans/1.json
  def show
  end

  # GET /nguoi_dans/new
  def new
    @nguoi_dan = NguoiDan.new
  end

  # GET /nguoi_dans/1/edit
  def edit
  end

  # POST /nguoi_dans or /nguoi_dans.json
  def create
    @nguoi_dan = NguoiDan.new(nguoi_dan_params)
    #(name: @nguoi_dan.so_cmnd, password: @nguoi_dan.so_cmnd, password_confirmation: @nguoi_dan.so_cmnd)
    # @nguoi_dan.User = User.new
    # @nguoi_dan.User.name = @nguoi_dan.so_cmnd
    # puts @nguoi_dan.User.name
    # @user.password = @nguoi_dan.so_cmnd
    # @user.password_confirmation = @nguoi_dan.so_cmnd
    # @nguoi_dan.User.permision = 1
    # redirect_to sign_up_path(@user)
    respond_to do |format|
      if @nguoi_dan.save
        format.html { redirect_to @nguoi_dan, notice: "Nguoi dan was successfully created." }
        format.json { render :show, status: :created, location: @nguoi_dan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nguoi_dan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nguoi_dans/1 or /nguoi_dans/1.json
  def update
    respond_to do |format|
      if @nguoi_dan.update(nguoi_dan_params)
        format.html { redirect_to @nguoi_dan, notice: "Nguoi dan was successfully updated." }
        format.json { render :show, status: :ok, location: @nguoi_dan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nguoi_dan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nguoi_dans/1 or /nguoi_dans/1.json
  def destroy
    nd_name = @nguoi_dan.so_cmnd
    @user = User.find_by(name: nd_name)
    @user.destroy
    @nguoi_dan.destroy
    respond_to do |format|
      format.html { redirect_to nguoi_dans_url, notice: "Nguoi dan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nguoi_dan
      @nguoi_dan = NguoiDan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nguoi_dan_params
      params.require(:nguoi_dan).permit(:ten, :biet_danh, :so_cmnd, :so_ho_khau, :so_ho_chieu, :qh_voi_chu_ho, :ngay_sinh, :gioi_tinh, :noi_sinh, :ngyen_quan, :dan_toc, :ton_giao, :quoc_tich, :noi_thuong_tru, :nghe_nghiep, :noi_lam_viec, :trinh_do_hoc_van, :trinh_do_ngoai_ngu)
    end

end
