class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    @jobs = Job.all
  end

  def show
    @boat = Boat.find(params[:id])
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

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    if @boat.save
      flash[:notice] = "Boat updated successfully"
      redirect_to boat_path
    else
      flash[:alert] = "There was an issue updating boat"
      render :edit
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :container_capacity, :location)
  end
end
