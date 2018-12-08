class BeerpairingsController < ApplicationController
  before_action :set_beerpairing, only: [:show, :edit, :update, :destroy]

  # GET /beerpairings
  # GET /beerpairings.json
  def index
    @beerpairings = Beerpairing.all
  end

  # GET /beerpairings/1
  # GET /beerpairings/1.json
  def show
    #not needed for our implementation
  end

  # GET /beerpairings/new
  def new
    @beerpairing = Beerpairing.new
  end

  # GET /beerpairings/1/edit
  def edit
    #not needed for our implementation
  end

  # POST /beerpairings
  # POST /beerpairings.json
  def create
    @beerpairing = Beerpairing.new(beerpairing_params)

    respond_to do |format|
      if @beerpairing.save
        format.html { redirect_to @beerpairing, notice: 'Beerpairing was successfully created.' }
        format.json { render :show, status: :created, location: @beerpairing }
      else
        format.html { render :new }
        format.json { render json: @beerpairing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beerpairings/1
  # PATCH/PUT /beerpairings/1.json
  def update
    respond_to do |format|
      if @beerpairing.update(beerpairing_params)
        format.html { redirect_to @beerpairing, notice: 'Beerpairing was successfully updated.' }
        format.json { render :show, status: :ok, location: @beerpairing }
      else
        format.html { render :edit }
        format.json { render json: @beerpairing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beerpairings/1
  # DELETE /beerpairings/1.json
  def destroy
    @beerpairing.destroy
    respond_to do |format|
      format.html { redirect_to beerpairings_url, notice: 'Beerpairing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beerpairing
      @beerpairing = Beerpairing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beerpairing_params
      params.require(:beerpairing).permit(:weight, :maindish_id, :beer_id)
    end
end
