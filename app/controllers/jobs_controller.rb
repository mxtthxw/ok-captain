class JobsController < ApplicationController
  def new
    @job = Job.new
    # @boat = Boat.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      # @boat = Boat.find(@job.boat_id)
      redirect_to boat_path(@job.boat_id)
    else
      render 'boat_path'
    end
  end

  def destroy
    # @boat = Boat.find(params[:id])
    # @job = Job.where(boat_id: @boat.id)
    # @job.destroy
    # redirect_to boat_path(@boat)
    @job = Job.find(params[:id])
    @boat_id = @job.boat_id
    @job.destroy
    flash[:notice] = "A job well done!"
    redirect_to boat_path(@boat_id)
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    # way to exclude user_id and boat_id above?
    redirect_to boat_path(@job.boat_id)
  end

  def show
  end

  def index
  end

  private

  def job_params
    params.require(:job).permit(:name, :description, :user_id, :boat_id, :origin, :destination, :containers, :cost)
  end
end
