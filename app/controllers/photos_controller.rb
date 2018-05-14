class PhotosController < ApplicationController
  def index
    @photos = []
    current_user.albums.each do |album|
      @photos << album.photos
    end
    @photos = @photos.flatten
  end
end
