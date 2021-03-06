class UsersController < ApplicationController
  def index
    @user = User.new
    @users = User.all
  end

  def create
    User.create user_params
    redirect_to :back
  end
  
  def new
    @user = User.new
  end

  def edit
    @user = User.find id_params 
  end

  def update
    user = User.find id_params
    if user.update_attributes user_params
      redirect_to users_path, :notice => 'Your task has successfully been updated'
    else
      redirect_to :back, :notice => 'There was an error updating your post.'
    end
  end
 
  def destroy
    User.destroy id_params
    redirect_to :back, :notice => 'Post has been deleted.' 
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def id_params
    params.require(:id)
  end

end
