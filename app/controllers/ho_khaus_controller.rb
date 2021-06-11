class HoKhausController < ApplicationController
  before_action :require_admin_logged_in!

  before_action :set_ho_khau, only: %i[ show edit update destroy ]

  # Show nguoi_dans trong ho_khau
  def show_nguoi_dan
    @ho_khau = HoKhau.find(params[:id])
  end

  # GET /ho_khaus or /ho_khaus.json
  def index
    @ho_khaus = HoKhau.all
  end

  # GET /ho_khaus/1 or /ho_khaus/1.json
  def show
  end

  # GET /ho_khaus/new
  def new
    @ho_khau = HoKhau.new
  end

  # GET /ho_khaus/1/edit
  def edit
  end

  # POST /ho_khaus or /ho_khaus.json
  def create
    @ho_khau = HoKhau.new(ho_khau_params)

    respond_to do |format|
      if @ho_khau.save
        format.html { redirect_to @ho_khau, notice: "Ho khau was successfully created." }
        format.json { render :show, status: :created, location: @ho_khau }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ho_khau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ho_khaus/1 or /ho_khaus/1.json
  def update
    respond_to do |format|
      if @ho_khau.update(ho_khau_params)
        format.html { redirect_to @ho_khau, notice: "Ho khau was successfully updated." }
        format.json { render :show, status: :ok, location: @ho_khau }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ho_khau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ho_khaus/1 or /ho_khaus/1.json
  def destroy
    @ho_khau.destroy
    respond_to do |format|
      format.html { redirect_to ho_khaus_url, notice: "Ho khau was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ho_khau
      @ho_khau = HoKhau.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ho_khau_params
      params.require(:ho_khau).permit(:id, :dia_chi, :ngay_cap, :noi_cap)
    end
end
