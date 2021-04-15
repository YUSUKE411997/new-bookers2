class UsersController < ApplicationController
  def index
    @users = User.all
    @book = Book.new
  end
  

  def show
    @user = User.find(params[:id])
    @book = Book.new
  end
  


  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.id = current_user.id
    if @user.update(user_params)
       flash[:notice] = "successfully"
       redirect_to user_path(@user)
    else
      render :edit
    end 
  end 
  

  
  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end 

  
end


