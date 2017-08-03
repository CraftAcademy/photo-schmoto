class CartController < ApplicationController
  def create
    if Cart.last
      cart = Cart.last
    else
      cart = Cart.create
    end
    photo = Photo.find(params[:photo_id])
    
    if cart.add(photo, photo.price)
      flash[:notice] = photo.title + " was  successfully added to cart!"
      redirect_to photos_path
    else
      flash[:alert] = "Item not added, try again!"
      redirect_to photos_path
    end
  end
end
