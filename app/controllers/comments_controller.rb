class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comments = @post.comments

    @comment = current_user.comments.build(comment_params)
    @comment.post = @post
    @new_comment = Comment.new

    authorize @comment

    if @comment.save
      flash[:notice] = "Thanks for commenting!"
    else
      flash[:error] = "There was an error saving comment. Please try again."
    end

    respond_to do |format|
      format.html
      format.js
    end
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
  end

  respond_to do |format|
    format.html
    format.js
  end


  private


  def comment_params
    params.require(:comment).permit(:body)
  end
  
end