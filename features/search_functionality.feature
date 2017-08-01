Feature: Search Functionality
  As a user,
  In order to search for images
  I need to see a search bar
  and be able to search for the keywords that I enter

Background:
  Given that i am on the landing page
  And there is a "search-field"

Scenario:
  When I fill in "search-field" with "keyword"
  And I click "Search" button
  Then I should be on "Search Result" page
