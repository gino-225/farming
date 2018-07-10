class HarvestingsController < ApplicationController
  before_action :set_harvesting, only: [:show, :edit, :update, :destroy]

  # GET /harvestings
  # GET /harvestings.json
  def index
    @harvestings = Harvesting.all
  end

  # GET /harvestings/1
  # GET /harvestings/1.json
  def show
  end

  # GET /harvestings/new
  def new
    @harvesting = Harvesting.new
  end

  # GET /harvestings/1/edit
  def edit
  end

  # POST /harvestings
  # POST /harvestings.json
  def create
    @harvesting = Harvesting.new(harvesting_params)

    respond_to do |format|
      if @harvesting.save
        format.html { redirect_to @harvesting, notice: 'Harvesting was successfully created.' }
        format.json { render :show, status: :created, location: @harvesting }
      else
        format.html { render :new }
        format.json { render json: @harvesting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harvestings/1
  # PATCH/PUT /harvestings/1.json
  def update
    respond_to do |format|
      if @harvesting.update(harvesting_params)
        format.html { redirect_to @harvesting, notice: 'Harvesting was successfully updated.' }
        format.json { render :show, status: :ok, location: @harvesting }
      else
        format.html { render :edit }
        format.json { render json: @harvesting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harvestings/1
  # DELETE /harvestings/1.json
  def destroy
    @harvesting.destroy
    respond_to do |format|
      format.html { redirect_to harvestings_url, notice: 'Harvesting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harvesting
      @harvesting = Harvesting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def harvesting_params
      params.require(:harvesting).permit(:date, :quantity, :field_finished, :measurement_id, :grow_id)
    end
end
