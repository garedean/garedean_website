class CommentsController < ApplicationController
  def create

    @comment = Comment.new(comment_params)
    @blog = Blog.find(params[:blog_id])
    @comments = @blog.comments.all

    if verify_recaptcha
      if @comment.save
        @blog.comments.push(@comment)
        redirect_to :back
      else
        render "blogs/show"
      end
    else
      render "blogs/show"
    end
  end

  def destroy
    @blog    = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :author)
  end
end
