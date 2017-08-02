class CartController < ApplicationController
  def create
    cart = Cart.create()
    photo = Photo.find(params[:photo_id])
    cart.add(photo, photo.price)
  end
end
