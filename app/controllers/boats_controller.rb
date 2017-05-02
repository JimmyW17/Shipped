class BoatsController < ApplicationController
  def index

  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      flash[:notice] = "Successfully registered boat"
      redirect_to boat_path(@boat)
    else
      flash[:alert] = "There was an issue registering boat"
      render :new
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :container_capacity, :location)
  end
end
