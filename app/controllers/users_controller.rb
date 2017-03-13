class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    #this step did not work.
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    login(@user) # <-- log the user in
    redirect_to @user # <-- go to show
  end

  before_action :require_login, only: [:show]

  def show
    @user = User.find_by_id(params[:id])
    render :show
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
