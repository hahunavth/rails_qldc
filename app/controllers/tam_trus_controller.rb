class TamTrusController < ApplicationController
  before_action :require_user_logged_in!

  before_action :set_tam_tru, only: %i[ show edit update destroy user_show user_edit]

  # GET /tam_trus or /tam_trus.json
  def index
    @tam_trus = TamTru.all
  end

  # GET /tam_trus/1 or /tam_trus/1.json
  def show
  end

  # GET /tam_trus/new
  def new
    @tam_tru = TamTru.new
  end

  # GET /tam_trus/1/edit
  def edit
  end

  # POST /tam_trus or /tam_trus.json
  def create
    @tam_tru = TamTru.new(tam_tru_params)

    respond_to do |format|
      @tam_tru.xac_nhan = 'Chưa xác nhận'
      if @tam_tru.save
        if Current.user.permision == 0
          format.html { redirect_to @tam_tru, notice: "Tam tru was successfully created." }
        else
          format.html { redirect_to user_show_tam_tru_url(@tam_tru), notice: "Tam tru was successfully created." }
        end
        format.json { render :show, status: :created, location: @tam_tru }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tam_tru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tam_trus/1 or /tam_trus/1.json
  def update
    respond_to do |format|
      if @tam_tru.update(tam_tru_params)
        if Current.user.permision == 0
          format.html { redirect_to @tam_tru, notice: "Tam tru was successfully updated." }
        else
          format.html { redirect_to user_show_tam_tru_url(@tam_tru), notice: "Tam tru was successfully updated." }
        end
        format.json { render :show, status: :ok, location: @tam_tru }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tam_tru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tam_trus/1 or /tam_trus/1.json
  def destroy
    @tam_tru.destroy
    respond_to do |format|
      if Current.user.permision == 0
        format.html { redirect_to tam_trus_url, notice: "Tam tru was successfully destroyed." }
      else
        format.html { redirect_to user_dang_ky_tam_tru_url, notice: "Tam tru was successfully destroyed." }
      end
      format.json { head :no_content }
    end
  end

  def user_index

    # flash[:notice] = NguoiDan.find_by_so_cmnd('030201001122')
    # @tam_trus_users = TamTru.where("nguoi_dan_id = ?", NguoiDan.find_by_so_cmnd(Current.user.name).id)
    @tam_trus = TamTru.where("nguoi_dan_id = ?", NguoiDan.find_by_so_cmnd(Current.user.name).id)
    # @name = Current.user.name
    # @nguoi_dan = NguoiDan.find_by_so_cmnd(name)
      # if NguoiDan.exists?(so_cmnd: Current.user.name)
      #   @nguoi_dans = NguoiDan.find_by_so_cmnd(@name)
      #   if TamTru.exists?(nguoi_dan_id: @nguoi_dans.id)
      #     @tam_trus_users = TamTru.where("nguoi_dan_id = ?", @nguoi_dan.id)
      #   end
      # end
    end

  def user_show
  end

  def user_new
    @tam_tru = TamTru.new
    @tam_tru.nguoi_dan_id = NguoiDan.find_by_so_cmnd(Current.user.name).id
  end

  def user_edit
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tam_tru
      @tam_tru = TamTru.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tam_tru_params
      params.require(:tam_tru).permit(:nguoi_dan_id, :tu_ngay, :den_ngay, :dia_chi, :li_do, :xac_nhan)
    end
end
