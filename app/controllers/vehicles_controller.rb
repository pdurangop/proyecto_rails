class VehiclesController < ApplicationController

  def new
    @user = current_user
    @vehicle = Vehicle.new
  end

  def index
    @vehicles = Vehicle.all
    flash[:error] = 'No vehicles registered.' if @vehicles.empty?
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user_id = current_user.id
    if @vehicle.save
      flash[:succes] = 'Vehicle registred successfully.'
      redirect_to user_vehicles_path(current_user)
    else
      flash[:error] = @vehicle.errors.full_messages-join(',')
      render 'new'
    end
  end

  def vehicle_params
    params.require(:vehicle).permit(:user_id, :model, :year, :vin, :id)
  end
end
