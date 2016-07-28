class LocationsController < ApplicationController
  def index
    @locations = Location.all
    flash[:error] = 'No locations registered.' if @locations.empty?
  end

  def new
    if current_user.is_admin
      @location = Location.new
    else
      flash[:error] = 'You must be logged as Administrator'
      redirect_to root_path
    end

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
