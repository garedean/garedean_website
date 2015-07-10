class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user = User.find(current_user.id)
    @blog = Blog.find(params[:blog_id])

    if @comment.save
      @blog.comments.push(@comment)
    else
      flash[:notice] = "Something went wrong... Try again"
    end
    redirect_to :back
  end

  def destroy
    @blog    = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
