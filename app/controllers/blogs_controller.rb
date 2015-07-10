class BlogsController < ApplicationController
  before_action :verify_is_admin, except: [:index]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blogs_path
    else
      redirect_to :back
    end
  end

  def show
    @blog = find_blog
    @comment = Comment.new
    @comments = @blog.comments.all
  end

  def destroy
    @blog = find_blog
    @blog.destroy
    redirect_to blogs_path
  end

  def edit
    @blog = find_blog
  end

  def update
    @blog = find_blog
    @blog.update(blog_params)
    redirect_to blogs_path
  end

  private

  def find_blog
    Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
