class CartController < ApplicationController
  def create
    if Cart.last
      cart = Cart.last
    else
      cart = Cart.create()
     end
    photo = Photo.find(params[:photo_id])
    if cart.add(photo, photo.price)
    redirect_to photos_path
    flash[:notice] = photo.title + " was  successfully added to cart!"
  else
    flash[:alert] = "Item not added, try again!"
  end
  end
end
