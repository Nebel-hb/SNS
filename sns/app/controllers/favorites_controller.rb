class FavoritesController < ApplicationController


  def create
    @post_image = PostImage.find(params[:post_image_id])
    favorite = current_user.favorites.build(post_image_id: params[:post_image_id])
    favorite.save
    # redirect_to blogs_path
  end

  def destroy
    @post_image = PostImage.find(params[:post_image_id])
    favorite = Favorite.find_by(post_image_id: params[:post_image_id], user_id: current_user.id)
    favorite.destroy
    # redirect_to blogs_path
  end

private
  def post_image_params
    params.require(:post_image).permit(:title, :image, :caption )
  end

end