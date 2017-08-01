When(/^I visit "([^"]*)" page$/) do |page_name|
  visit photos_path
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
