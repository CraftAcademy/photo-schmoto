Feature: Langing page
As a user,
In order to search for pictures
I need to be on the landing page

Scenario: Visit landing page
  When I visit "landing" page
  Then I should be on "landing" page
  And I should see "search" 
