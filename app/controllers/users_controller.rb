class UsersController < ApplicationController
  before_action :authenticate_user!
  def home
    #@posts = current_user.posts
  end
end
