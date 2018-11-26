class WinepairingsController < ApplicationController
  before_action :set_winepairing, only: [:show, :edit, :update, :destroy]

  # GET /winepairings
  # GET /winepairings.json
  def index
    @winepairings = Winepairing.all
  end

  # GET /winepairings/1
  # GET /winepairings/1.json
  def show
  end

  # GET /winepairings/new
  def new
    @winepairing = Winepairing.new
  end

  # GET /winepairings/1/edit
  def edit
  end

  # POST /winepairings
  # POST /winepairings.json
  def create
    @winepairing = Winepairing.new(winepairing_params)

    respond_to do |format|
      if @winepairing.save
        format.html { redirect_to @winepairing, notice: 'Winepairing was successfully created.' }
        format.json { render :show, status: :created, location: @winepairing }
      else
        format.html { render :new }
        format.json { render json: @winepairing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /winepairings/1
  # PATCH/PUT /winepairings/1.json
  def update
    respond_to do |format|
      if @winepairing.update(winepairing_params)
        format.html { redirect_to @winepairing, notice: 'Winepairing was successfully updated.' }
        format.json { render :show, status: :ok, location: @winepairing }
      else
        format.html { render :edit }
        format.json { render json: @winepairing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /winepairings/1
  # DELETE /winepairings/1.json
  def destroy
    @winepairing.destroy
    respond_to do |format|
      format.html { redirect_to winepairings_url, notice: 'Winepairing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_winepairing
      @winepairing = Winepairing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def winepairing_params
      params.require(:winepairing).permit(:weight, :maindish_id, :beer_id)
    end
end
