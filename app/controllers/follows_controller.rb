class FollowsController < ApplicationController
  
  def create
  	current_user
  	current_admin
  	@follow = Follow.new(user_id: current_user.id, boat_id: params[:boat_id])

  	respond_to do |format|
  		if @follow.save
  			flash[:notice] = "You followed this boat!"
  			format.html { redirect_to :back, notice: "You followed this boat!"}
  			format.json { render :show, status: :created, location: @follow}
  		else
  			format.html { render :new }
  			format.json { render json: @follow.errors, status: :unprocessable_entity }
  		end
  	end
  end

  def destroy
  	@follow = Follow.find(params[:id])
  	@boat = Boat.find(params[:id])
  	@follow.destroy
  	respond_to do |format|
  		format.html { redirect_to :back, notice: "You unfollowed this boat! That's cold!"}
  		format.json { head :no_content }
  	end
  end

end