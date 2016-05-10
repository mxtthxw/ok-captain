class BoatsController < ApplicationController
  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render 'new'
    end
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def index
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :location, :email, :capacity)
  end
end
