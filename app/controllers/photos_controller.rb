class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def search
  end
end
