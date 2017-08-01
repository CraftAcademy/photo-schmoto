When(/^I visit "([^"]*)" page$/) do |page_name|
  visit root_path
end

Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end
