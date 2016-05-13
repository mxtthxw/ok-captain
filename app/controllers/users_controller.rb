class UsersController < ApplicationController

  def destroy
  end

  def edit
  end

  def update
  end

  def show
    current_user
    current_admin
    @user = User.find(params[:id])
    @fave_boats = @user.vessels
    @boats = Boat.where(user_id: @user_id)
  end

  def index
    @users = User.all
  end

  # private

  # def user_params
  #   params.require(:boat).permit(:name, :location, :email, :capacity)
  # end
end
