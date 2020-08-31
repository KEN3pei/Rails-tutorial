class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    # debugger
  end
  
  def new
    @user = User.new
    # debugger
  end

  def create
    @user = User.new(user_params)
    # debugger
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user and return 
      # redirect_to("/users/#{@user.id}") and return 
      # redirect_to(user_url(@user.id)) and return 
    end
    render "new"
    # redirect_to action: :new
    # debugger
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
