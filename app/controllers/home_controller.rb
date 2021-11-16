class HomeController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])

    @user.update(user_params)
    if @user.save
      redirect_to root_path
    else
      render :edit
    end
  end



  def destroy

    @user = User.find(params[:id]).destroy
    redirect_to root_path

  end
  private

  def user_params
    params.require(:user).permit(:name, :cnic, :email, :joindate, :role, :password)
  end

end