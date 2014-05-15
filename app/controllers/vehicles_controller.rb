class VehiclesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /vehicles
  # GET /vehicles.json
  def index
    authorize! :read, Vehicle
    @vehicles = if params[:q]
      Vehicle.search_vehicles params[:q]
    else
      Vehicle.all
    end

    respond_to do |format|
      format.js
      format.html
    end
  end

  # GET /vehicles/1
  # GET /vehicles/1.json
  def show
    authorize! :read, Vehicle
  end

  # GET /vehicles/new
  def new
    authorize! :manage, Vehicle
    @vehicle = Vehicle.new
    @options = Option.all
  end

  # GET /vehicles/1/edit
  def edit
    authorize! :manage, Vehicle
    @options = Option.all
  end

  # POST /vehicles
  # POST /vehicles.json
  def create
    authorize! :manage, Vehicle
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.html { render :new }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicles/1
  # PATCH/PUT /vehicles/1.json
  def update
    authorize! :manage, Vehicle
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    authorize! :manage, Vehicle
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(
        :make,
        :vehicle_model,
        :year,
        :color,
        :cost,
        :markup,
        {option_ids: [] },
        :workflow_state 
      )
    end
end
