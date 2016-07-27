class LocationsController < ApplicationController
  def index
    @locations = Location.all
    flash[:error] = 'No locations registered.' if @locations.empty?
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)

    if @location.save
      flash[:succes] = 'Location registred successfully.'
      redirect_to locations_path()
    else
      flash[:error] = @location.errors.full_messages-join(',')
      render 'new'
    end
  end

  def location_params
    params.require(:location).permit(:description, :max_slots, :address, :latitude, :longitude)
  end
end
