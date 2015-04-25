class FavoritesController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.build(post: post)
    authorize favorite
    if favorite.save
      flash[:notice] = "Post favorited"
    else
      flash[:error] = "Error favoriting post"
    end
    redirect_to [post.topic, post]
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites(post: post)
    authorize favorite
    if favorite.destroy
      flash[:notice] = "Post Unfavorited"
    else
      flash[:error] = "Error unfavoriting post"
    end
    redirect_to [post.topic, post]
  end
end
