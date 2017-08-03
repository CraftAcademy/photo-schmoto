class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    if Cart.last
      @cart = Cart.last.total_unique_items || 0
    end
  end
end
