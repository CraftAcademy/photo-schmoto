Feature: Search Functionality
  As a user,
  In order to filter the images
  I should be able to search

Background:
  Given that i am on the landing page
  And there is a field "search_field"
  Given The following photos exist
    | title   | price   | image_path                              |
    | Sporty1 | 30      | http://lorempixel.com/400/200/sports/1/ |
    | Sporty2 | 40      | http://lorempixel.com/400/200/sports/2/ |
    | Sporty3 | 50      | http://lorempixel.com/400/200/sports/3/ |
    | Sporty4 | 60      | http://lorempixel.com/400/200/sports/4/ |

Scenario: Search from the landing page [Happy path]
  When I fill in "search_field" with "Sporty1"
  And I click "search" button
  Then I should see "Sporty1"
  And I should not see "Sporty2"
  And I should not see "There is no matching picture"

Scenario: Search from the landing page [Sad path]
  When I fill in the "search_field" with "nature"
  And I click "search" button
  Then I should see "There is no matching picture"
