class PostsController < ApplicationController

  def index
   @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    po = Post.new(post_parameters)
    po.save

    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_parameters)

    redirect_to posts_path
  end

  def delete
  end

  def destroy
  end



  private
  def post_parameters
    params.require(:post).permit(:image_url, :text, :likes, :comments)
  end
  def find_post
    @post = Post.find(params[:id])
  end
end
