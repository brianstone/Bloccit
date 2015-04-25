class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(comment_params)
    @comment.post = @post
    if @comment.save
      flash[:notice] = "Thanks for commenting!"
    else
      flash[:error] = "There was an error saving comment. Please try again."
    end
    redirect_to [@post.topic, @post]
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    authorize @comment
    if @comment.destroy
      flash[:notice] = "Comment removed."
    else
      flash[:error] = "Error deleting comment. Please try again."
    end
    redirect_to [@post.topic, @post]
  end



  private


  def comment_params
    params.require(:comment).permit(:body)
  end
  
end