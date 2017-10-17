class UsersController < ApplicationController
  before_action :validate_admin

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    id = params[:id]
    @user = User.find(id)
    @user.update(user_params)
    redirect_to users_path, notice: "User was successfully updated."
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :admin, :email, :password, :password_confirmation)
  end

end
