class ChargesController < ApplicationController

  def new
  end

  def create

    if session[:cart_id]
      @cart = Cart.find(session[:cart_id])
    end

    # Amount in cents
    @amount = (@cart.total*100).to_i

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
