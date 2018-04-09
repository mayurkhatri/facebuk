class PostsController < ApplicationController
  def create
    current_user.posts.create(post_params)
    redirect_to root_url
  end

  def index
    @posts = Post.all
  end

  private
  def post_params
    params.require(:post).permit(:text_content, :image)
  end
end
