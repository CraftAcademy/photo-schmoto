class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def search
    @photos = Photo.where("title = ?", params[:search_field])
  end
end
