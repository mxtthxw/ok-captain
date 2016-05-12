class BoatsController < ApplicationController
  def new
    @boat = Boat.new
  end

  def create
    current_user
    current_admin
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
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update(boat_params)
      redirect_to boat_path(@boat)
    else
      render 'new'
    end
  end

  def show
    current_user
    current_admin
    @boat = Boat.find(params[:id])
    @job = Job.new
    @jobs = Job.where(boat_id: @boat.id)
  end

  def index
    @boats = Boat.all
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :location, :email, :capacity, :user_id)
  end
end
