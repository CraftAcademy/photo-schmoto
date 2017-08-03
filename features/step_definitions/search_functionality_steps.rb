Given(/^that i am on the landing page$/) do
  visit root_path
end

Given(/^there is a field "([^"]*)"$/) do |field|
  find_field(field).value
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

When(/^I click "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end

When(/^I fill in the "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in field, with: value
end

When(/^I click on the "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I should see an error message saying "([^"]*)"$/) do |content|
  expect(page).to have_content content
end
