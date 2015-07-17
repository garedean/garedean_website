class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = Comment.new(comment_params)
    @comments = @blog.comments.all

    if @comment.save
      @blog.comments.push(@comment)
      flash[:notice] = "Comment added!"

      respond_to do |format|
        format.html { render "blogs/show" }
        format.js
      end
    else
      respond_to do |format|
        format.html { render "blogs/show" }
        format.js { render "new" }
      end
    end
  end

  def destroy
    @blog    = Blog.find(params[:blog_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.js { render "blogs/destroy" }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :author)
  end
end
