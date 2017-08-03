class CartController < ApplicationController
  def create
    if Cart.last
      cart = Cart.last
    else
      cart = Cart.create()
     end
    photo = Photo.find(params[:photo_id])
    cart.add(photo, photo.price)
    redirect_to photos_path
  end
end
