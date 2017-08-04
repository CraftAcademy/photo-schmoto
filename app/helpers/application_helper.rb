module ApplicationHelper
  def get_cart_items_count
    return Cart.last.total_unique_items if Cart.last
    0
  end
end
