module ApplicationHelper
  def get_cart_items_count
    if session[:cart_id]
      return Cart.find(session[:cart_id]).total_unique_items
    else
      return 0
    end
  end
end
