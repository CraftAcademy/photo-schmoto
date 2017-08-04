Given(/^The following photos exist in the cart$/) do |table|
  @cart = Cart.create
  table.hashes.each do |photo_title|
    photo = Photo.find_by(photo_title)
    @cart.add(photo, photo.price)
  end
end

Then(/^I should see the count "([^"]*)" for "([^"]*)"$/) do |expected_count, photo_title|
  within "#cart_row_" + Photo.find_by(title: photo_title).id.to_s do
    page.should have_content expected_count
  end
end
