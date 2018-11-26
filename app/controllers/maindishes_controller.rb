class MaindishesController < ApplicationController
  before_action :set_maindish, only: [:show, :edit, :update, :destroy]

  # GET /maindishes
  # GET /maindishes.json
  def index
    @maindishes = Maindish.all
  end

  # GET /maindishes/1
  # GET /maindishes/1.json
  def show
  end

  # GET /maindishes/new
  def new
    @maindish = Maindish.new
  end

  # GET /maindishes/1/edit
  def edit
  end

  # POST /maindishes
  # POST /maindishes.json
  def create
    @maindish = Maindish.new(maindish_params)

    respond_to do |format|
      if @maindish.save
        format.html { redirect_to @maindish, notice: 'Maindish was successfully created.' }
        format.json { render :show, status: :created, location: @maindish }
      else
        format.html { render :new }
        format.json { render json: @maindish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maindishes/1
  # PATCH/PUT /maindishes/1.json
  def update
    respond_to do |format|
      if @maindish.update(maindish_params)
        format.html { redirect_to @maindish, notice: 'Maindish was successfully updated.' }
        format.json { render :show, status: :ok, location: @maindish }
      else
        format.html { render :edit }
        format.json { render json: @maindish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maindishes/1
  # DELETE /maindishes/1.json
  def destroy
    @maindish.destroy
    respond_to do |format|
      format.html { redirect_to maindishes_url, notice: 'Maindish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maindish
      @maindish = Maindish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maindish_params
      params.require(:maindish).permit(:name, :description, :category)
    end
end
