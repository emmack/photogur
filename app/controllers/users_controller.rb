class UsersController < ApplicationController
  def new
  	@users =User.new
  end

  def edit
  	@product = Picture.find(params[:id])

  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to picture_url
  	else
  		render "new"
  	end
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update_attributes(user_params)
  		redirect_to user_path(@user)
  	else
  		render :edit
  	end
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to picture_path
  end


  private
  	def user_params
  	 	params.require(:user).permit(:email, :password, :password_confirmation, :name, :avatar)
  	end
end
