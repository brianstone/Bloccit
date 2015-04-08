class SummariesController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @summary = Summary.find(params[:post_id])
  end

  def new
    @post = Post.find(params[:post_id])
    @summary = Summary.new
  end

  def create
    @post = Post.find(params[:post_id])
    @summary = Summary.new(params.require(:summary).permit(:description))
    if @summary.save
      flash[:notice] = "Summary was saved"
      redirect_to @summary
    else
      flash[:error] = "There was an error saving the summary. Please try again."
      render :new
    end
  end
end