When(/^I add "([^"]*)" to cart$/) do |photo_title|
  add_button_with_id = Photo.find_by(title: photo_title).id
  click_link_or_button add_button_with_id
end

Then(/^Items in cart should be "([^"]*)"$/) do |expected_count|
  within "#cart_item" do
  page.should have_content expected_count
  end
end
