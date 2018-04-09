class UsersController < ApplicationController
  before_action :authenticate_user!
  def home
    @post = current_user.posts.new
    @existing_posts = current_user.try(:friends).try(:posts).where.not(image: nil).to_a if current_user.try(:friends).try(:posts).present?
    @existing_post = current_user.posts.where.not(image: nil).to_a.first
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
