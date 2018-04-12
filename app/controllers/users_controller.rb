class UsersController < ApplicationController
  before_action :authenticate_user!
  def home
    @post = current_user.posts.new
    user_friends = current_user.try(:friends) if current_user.try(:friends).present?
    @existing_posts = []
    user_friends.each do |friend|
      @existing_posts = @existing_posts + friend.try(:posts)
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end