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
    @fave_boats = @current_user.vessels
    if current_user
      if params[:id] == "login"
        redirect_to new_user_session
      else
        @user = User.find(params[:id])
        @boats = Boat.where(user_id: @user_id)
      end
    end
  end

  def index
    @users = User.all
  end

  # private

  # def user_params
  #   params.require(:boat).permit(:name, :location, :email, :capacity)
  # end
end
