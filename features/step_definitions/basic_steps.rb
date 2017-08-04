When(/^I visit "([^"]*)" page$/) do |page_name|
  page_path = get_path_from page_name
  visit page_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^The following photos exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:photo, hash)
  end
end

Then(/^I see a photo "([^"]*)"$/) do |photo|
  expect(page).to have_content photo
end

Then(/^I see price "([^"]*)"$/) do |price|
  expect(page).to have_content price
end

Then(/^Photos have correct "([^"]*)" src$/) do |image_path|
  expect(page).to have_xpath("//img[@src='" + image_path + "']")
end

def get_path_from(page_name)

  case page_name
  when 'landing'
    root_path
  when 'Cart Detail'
    cart_index_path
  when 'Photos'
    photos_path
  else
    raise 'Path missing!'
  end

end
