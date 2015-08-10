class BlogsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      binding.pry
      redirect_to blogs_path, notice: "Post added!"
    else
      render :new
    end
  end

  def show
    @blog = find_blog
    @content = @blog.content.html_safe
  end

  def destroy
    @blog = find_blog
    @blog.destroy
    redirect_to blogs_path, notice: "Post deleted!"
  end

  def edit
    @blog = find_blog
  end

  def update
    @blog = find_blog
    @blog.update(blog_params)
    redirect_to blog_path(@blog.id), notice: "Post updated!"
  end

  private

  def find_blog
    Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
