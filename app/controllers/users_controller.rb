class UsersController < ApplicationController
  respond_to :html, :js
  def new
  	@user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to posts_path, :notice => "Signed up!"
    else
      render "new"
    end
  end
  
  def show
    @user = current_user
  end

  
  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :State, :City, :Phonenumber)
    end

end
