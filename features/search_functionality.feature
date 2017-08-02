Feature: Search Functionality
  As a user,
  In order to filter the images
  I should be able to search

Background:
  Given that i am on the landing page
  #And save and open page
  And there is a field "search-field"

Scenario:
  #And save and open page
  When I fill in "search_field" with "photo1"
  And I click "search" button
  Then I should see "photo1"
  Then I should not see "photo2"
