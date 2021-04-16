class UserIndexController < ApplicationController

  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page]).reverse_order
  end
  
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

  
end
