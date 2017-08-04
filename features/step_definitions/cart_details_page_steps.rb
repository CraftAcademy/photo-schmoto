Given(/^The following photos exist in the cart$/) do |table|
  @cart = Cart.create
  table.hashes.each do |photo_title|
    photo = Photo.find_by(photo_title)
    @cart.add(photo, photo.price)
  end
end

Then(/^I should see "([^"]*)" in the cart$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the count "([^"]*)" for "([^"]*)"$/) do |arg1, arg2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see total price "([^"]*)" in the cart$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
