When(/^I visit "([^"]*)" page$/) do |page_name|
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^The following photos exist$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:photo, hash)
  end
end

Then(/^I see a photo Sporty(\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I see price (\d+)$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
