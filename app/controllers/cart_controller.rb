class CartController < ApplicationController
  def create
    if session[:cart_id]
      cart = Cart.find(session[:cart_id])
    else
      cart = Cart.create
      session[:cart_id] = cart.id
    end

    photo = Photo.find(params[:photo_id])

    if cart.add(photo, photo.price)
      flash[:notice] = photo.title + " was  successfully added to cart!"
    else
      flash[:alert] = "Item not added, try again!"
    end

    redirect_to photos_path
  end
end
