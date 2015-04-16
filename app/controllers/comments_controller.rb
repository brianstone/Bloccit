class CommentsController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(comment_params)
    @comment.post = @post
    if @comment.save
      flash[:notice] = "Thanks for commenting!"
    else
      flash[:error] = "There was an error saving comment. Please try again."
    end
    redirect_to [@topic, @post]
  end



  private


  def comment_params
    params.require(:comment).permit(:body)
  end
end