class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @posts = Post.all.reverse
  end

  def new
    @post = Post.new
    # add user id here
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:image, :caption)
  end
end
