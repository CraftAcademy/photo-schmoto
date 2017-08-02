When(/^I add "([^"]*)" to cart$/) do |photo_title|
  photo_id = Photo.find_by(title: photo_title).id
  click_link_or_button photo_id
end

Then(/^Items in cart should be "(\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end