module ApplicationHelper

  def get_cart_items_count
    if Cart.last
      Cart.last.total_unique_items || 0
    end
  end

end
