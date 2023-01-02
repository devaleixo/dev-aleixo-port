class UsersController < ApplicationController
  def new
    @user = User.new
    @users = User.all
  end

  def create
    @user = User.new(ath_params)
    @user.save
    redirect_to root_path
  end

  private

  def ath_params
    params.require(:user).permit(:email, :hiring, :freelancer, :work_together)
  end
end
