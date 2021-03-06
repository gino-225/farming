class PlantingsController < ApplicationController
  before_action :set_planting, only: [:show, :edit, :update, :destroy]

  # GET /plantings
  # GET /plantings.json
  def index
    @plantings = Planting.all
  end

  # GET /plantings/1
  # GET /plantings/1.json
  def show
  end

  # GET /plantings/new
  def new
    @planting = Planting.new
  end

  # GET /plantings/1/edit
  def edit
  end

  # POST /plantings
  # POST /plantings.json
  def create
    @planting = Planting.new(planting_params)

    respond_to do |format|
      if @planting.save
        format.html { redirect_to @planting, notice: 'Planting was successfully created.' }
        format.json { render :show, status: :created, location: @planting }
      else
        format.html { render :new }
        format.json { render json: @planting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plantings/1
  # PATCH/PUT /plantings/1.json
  def update
    respond_to do |format|
      if @planting.update(planting_params)
        format.html { redirect_to @planting, notice: 'Planting was successfully updated.' }
        format.json { render :show, status: :ok, location: @planting }
      else
        format.html { render :edit }
        format.json { render json: @planting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantings/1
  # DELETE /plantings/1.json
  def destroy
    @planting.destroy
    respond_to do |format|
      format.html { redirect_to plantings_url, notice: 'Planting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planting
      @planting = Planting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def planting_params
      params.require(:planting).permit(:date, :seed_treated, :soil_condition, :grow_id)
    end
end
