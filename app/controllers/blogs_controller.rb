class BlogsController < ApplicationController
  before_action :verify_is_admin, except: [:index, :show]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:notice] = "Post added!"
      redirect_to blogs_path
    else
      render :new
    end
  end

  def show
    @blog = find_blog
    @content = @blog.content.html_safe
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
    redirect_to blog_path(@blog.id)
  end

  private

  def find_blog
    Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
