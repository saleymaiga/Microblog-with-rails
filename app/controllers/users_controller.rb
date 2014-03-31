class UsersController < ApplicationController
  
  # def create
  # 	User.create(user_params)	#To define what the user in allow to modifie. this is new in Rails 4
  # end

  #  private              

  # def user_params
  # params.require(:user).permit(:name, :email)

  # end


  def new
  	@title = "Sign up"
  end

  def show
  	@user = User.find(params[:id])
  	
  end


end
