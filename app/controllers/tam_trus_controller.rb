class TamTrusController < ApplicationController
  before_action :require_user_logged_in!

  before_action :set_tam_tru, only: %i[ show edit update destroy ]

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
      if @tam_tru.save
        format.html { redirect_to @tam_tru, notice: "Tam tru was successfully created." }
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
        format.html { redirect_to @tam_tru, notice: "Tam tru was successfully updated." }
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
      format.html { redirect_to tam_trus_url, notice: "Tam tru was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tam_tru
      @tam_tru = TamTru.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tam_tru_params
      params.require(:tam_tru).permit(:nguoi_dan_id, :tu_ngay, :den_ngay, :dia_chi, :li_do)
    end
end
