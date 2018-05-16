class PagesController < ApplicationController
  def index
    @pages = current_user.pages
  end

  def create
  end

  def show
  end
end
