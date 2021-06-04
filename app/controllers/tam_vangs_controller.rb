class TamVangsController < ApplicationController
  before_action :require_user_logged_in!
  
  before_action :set_tam_vang, only: %i[ show edit update destroy ]

  # GET /tam_vangs or /tam_vangs.json
  def index
    @tam_vangs = TamVang.all
  end

  # GET /tam_vangs/1 or /tam_vangs/1.json
  def show
  end

  # GET /tam_vangs/new
  def new
    @tam_vang = TamVang.new
  end

  # GET /tam_vangs/1/edit
  def edit
  end

  # POST /tam_vangs or /tam_vangs.json
  def create
    @tam_vang = TamVang.new(tam_vang_params)

    respond_to do |format|
      if @tam_vang.save
        format.html { redirect_to @tam_vang, notice: "Tam vang was successfully created." }
        format.json { render :show, status: :created, location: @tam_vang }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tam_vang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tam_vangs/1 or /tam_vangs/1.json
  def update
    respond_to do |format|
      if @tam_vang.update(tam_vang_params)
        format.html { redirect_to @tam_vang, notice: "Tam vang was successfully updated." }
        format.json { render :show, status: :ok, location: @tam_vang }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tam_vang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tam_vangs/1 or /tam_vangs/1.json
  def destroy
    @tam_vang.destroy
    respond_to do |format|
      format.html { redirect_to tam_vangs_url, notice: "Tam vang was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tam_vang
      @tam_vang = TamVang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tam_vang_params
      params.require(:tam_vang).permit(:nguoi_dan_id, :tu_ngay, :den_ngay, :dia_chi, :li_do)
    end
end
